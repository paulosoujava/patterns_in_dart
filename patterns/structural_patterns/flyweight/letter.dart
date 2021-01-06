class Letter {
  String letter;
  Letter(String l) {
    if (l.length != 1) {
      throw new Exception("Can only be a single letter");
    }
    letter = l;
  }

  @override
  String toString() => letter;
}
