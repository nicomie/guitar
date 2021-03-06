import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guitar/models/chord.dart';
import 'package:guitar/models/menu_item.dart';
import 'package:provider/provider.dart';

import '../models/chord_model.dart';

class Guitar extends StatefulWidget {
  const Guitar({Key? key}) : super(key: key);

  @override
  State<Guitar> createState() => _GuitarState();
}

class _GuitarState extends State<Guitar> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    print('hej');
  }

  @override
  Widget build(BuildContext context) {
    const frets = Color(0xFF754F44);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Nicos app'),
        ),
        backgroundColor: frets,
        body: Consumer<ChordModel>(builder: (context, chord, child) {
          return Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Color.fromARGB(255, 31, 96, 158),
                  width: 3.0,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: getNotes(chord.note, chord),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

bool isDotted(int fret) {
  return (fret == 3 ||
      fret == 3 ||
      fret == 5 ||
      fret == 7 ||
      fret == 9 ||
      fret == 12);
}

List<Row> getNotes(String node, ChordModel chord) {
  List<Row> notes = [];

  const STRINGS = 6;
  const FRETS = 25;
  for (int strings = 0; strings < STRINGS; strings++) {
    Row row = Row(
      children: [],
    );

    for (int frets = 0; frets < FRETS; frets++) {
      String note = fretboard2d[strings][frets];

      row.children.add(Container(
        width: 80.0 - (0.8 * frets),
        height: 40.0,
        decoration: BoxDecoration(
            border: Border.all(
                color: frets == 0
                    ? Color.fromARGB(255, 124, 92, 83)
                    : Colors.white),
            color: isDotted(frets)
                ? Color.fromARGB(255, 70, 53, 49)
                : Color(0xFF754F44)),
        child: Center(
          child: Text(
            isChord(chord.note, note) ? note : '',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ));
    }
    notes.add(row);
  }
  return notes;
}

List<List<String>> fretboard2d = [
  [
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E'
  ],
  [
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B'
  ],
  [
    'G',
    'G#',
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
  ],
  [
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D'
  ],
  [
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A'
  ],
  [
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B',
    'C',
    'C#',
    'D',
    'D#',
    'E'
  ],
];
