import 'package:guitar/models/chord.dart';

class MenuItem {
  final String note;

  const MenuItem(this.note);

  @override
  String toString() {
    if (note == 'All') {
      return 'All';
    }
    return note[note.length - 1].toUpperCase() + ' Chord';
  }
}
