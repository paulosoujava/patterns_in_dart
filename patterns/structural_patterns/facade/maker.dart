class Maker {
  String _type;

  Maker(this._type);

  void fill() {
    print("Filling the $_type maker!");
  }

  void retrieve() {
    print("Retrieving the $_type!");
  }

  void start() {
    print("Starting the $_type maker!");
  }
}
