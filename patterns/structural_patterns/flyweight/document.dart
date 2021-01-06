import 'dart:collection';
import 'letter_factory.dart';
import 'sentence.dart';

class Document {
  LetterFactory letterFactory = LetterFactory();
  int lettersWritten = 0;
  SplayTreeMap<int, Sentence> sentences;

  Document() {
    sentences = new SplayTreeMap<int, Sentence>();
  }

  void export() => sentences.forEach((k, v) => print("$v"));

  void write(int sentenceKey, String letterString) {
    if (!sentences.containsKey(sentenceKey)) {
      sentences[sentenceKey] = Sentence();
    }

    var l = letterFactory.fetchLetter(letterString);
    sentences[sentenceKey].addLetter(l);
    lettersWritten++;
  }

  int get lettersCreated => letterFactory.lettersCreated;
}
