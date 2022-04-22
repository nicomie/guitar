class Chord {
  String _chord = 'A';
}

isChord(String chord, String note) {
  if (chord == 'A') {
    return note == 'A' || note == 'C#' || note == 'E';
  } else if (chord == 'B') {
    return note == 'B' || note == 'D#' || note == 'F#';
  } else if (chord == 'C') {
    return note == 'C' || note == 'E' || note == 'G';
  } else if (chord == 'D') {
    return note == 'D' || note == 'F#' || note == 'A';
  } else if (chord == 'E') {
    return note == 'E' || note == 'G#' || note == 'B';
  } else if (chord == 'F') {
    return note == 'F' || note == 'A' || note == 'C';
  } else if (chord == 'G') {
    return note == 'G' || note == 'B' || note == 'D';
  } else {
    return true;
  }
}
