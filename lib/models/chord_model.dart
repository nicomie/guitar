import 'package:flutter/cupertino.dart';
import 'package:guitar/models/chord.dart';
import 'package:guitar/models/menu_item.dart';

class ChordModel extends ChangeNotifier {
  String _note = 'A';

  String get chordName => _note.toString();

  String get note => _note;

  void changeNote(String note) {
    _note = note;
    notifyListeners();
  }
}
