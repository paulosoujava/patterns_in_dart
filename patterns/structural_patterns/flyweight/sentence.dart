import 'letter.dart';

class Sentence {
  List<Letter> letters = [];
  void addLetter(Letter letter) => letters.add(letter);

  @override
  String toString() => letters.join("");
}
