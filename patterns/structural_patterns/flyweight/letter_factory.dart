import 'letter.dart';

class LetterFactory {
  Map<String, Letter> letters = {};

  Letter fetchLetter(String l) {
    if (letters.containsKey(l)) {
      return letters[l];
    }
    var letter = Letter(l);
    letters[l] = letter;
    return letter;
  }

  int get lettersCreated => letters.length;
}
