import 'package:flutter/material.dart';
import 'package:guitar/models/chord_model.dart';
import 'package:guitar/models/menu_item.dart';
import 'package:provider/provider.dart';

import '../models/chord.dart';

class MenuItems {
  static const all = MenuItem('All');
  static const aChord = MenuItem('A');
  static const bChord = MenuItem('B');
  static const cChord = MenuItem('C');
  static const dChord = MenuItem('D');
  static const eChord = MenuItem('E');
  static const fChord = MenuItem('F');
  static const gChord = MenuItem('G');

  static const items = <MenuItem>[
    all,
    aChord,
    bChord,
    cChord,
    dChord,
    eChord,
    fChord,
    gChord,
  ];
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ...MenuItems.items
                    .map((item) => buildMenuItem(item, context))
                    .toList(),
              ],
            ),
          ),
        ));
  }

  Widget buildMenuItem(MenuItem item, BuildContext context) => ListTile(
      minLeadingWidth: 20,
      leading: Icon(Icons.music_note),
      title: Text(item.toString()),
      onTap: () {
        context.read<ChordModel>().changeNote(item.note);
        print(item.note);
      });
}
