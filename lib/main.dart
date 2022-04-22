import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:guitar/models/chord_model.dart';
import 'package:guitar/screens/guitar.dart';
import 'package:guitar/screens/menu.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => ChordModel(), child: const Main()),
  );
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ZoomDrawer(
        style: DrawerStyle.style3,
        isRtl: true,
        mainScreen: Guitar(),
        menuScreen: Menu(),
      ),
    );
  }
}
