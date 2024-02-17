class CurrentSession {
  //SingleTon
  CurrentSession._();
  static final CurrentSession _instance = CurrentSession._();
  factory CurrentSession() => CurrentSession._instance;
  //
  Future<void> init() async {}
}
