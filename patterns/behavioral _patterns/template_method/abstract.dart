abstract class Abstract {
  String abstractMethod();
  String hookMethod() => "OMG I am a hook!";
  void templateMethod() {
    print(abstractMethod());
    print(hookMethod());
  }
}
