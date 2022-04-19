import 'package:flutter/material.dart';
import 'package:guitar/models/menu_item.dart';
import 'package:guitar/screens/guitar.dart';

class MenuItems {
  static const aChord = MenuItem('A chord');
  static const bChord = MenuItem('B chord');

  static const items = <MenuItem>[
    aChord,
    bChord,
  ];
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            ...MenuItems.items.map(buildMenuItem).toList(),
            Spacer(flex: 2),
          ],
        )));
  }

  Widget buildMenuItem(MenuItem item) => ListTile(
      minLeadingWidth: 20,
      leading: Icon(Icons.abc),
      title: Text(item.title),
      onTap: () {
        Guitar.setChord(Chord.b);
      });
}

enum Chord {
  a,
  asharp,
  b,
  bsharp,
}
