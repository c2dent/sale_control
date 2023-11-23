class WrapperType<T> {
  late T _value;

  WrapperType(T initial) {
    _value = initial;
  }

  T get() => _value;

  void set(T value) => _value = value;
}