abstract class Controller<T> {
  T get state;
  void dispatch(T state);
  ControllerDispose connect(void Function(T) listener);
  void dispose();
}

typedef ControllerDispose = void Function();
