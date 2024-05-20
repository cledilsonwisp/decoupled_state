import 'dart:async';

import 'package:decoupled_state/src/core/controller/controller.dart';

abstract class ControllerStream<T> implements Controller {
  final _streamController = StreamController.broadcast();

  T _state;

  ControllerStream(this._state);

  @override
  T get state => _state;

  @override
  void dispatch(state) {
    _state = state;
    _streamController.add(state);
  }

  @override
  ControllerDispose connect(void Function(dynamic) listener) {
    final sub = _streamController.stream.listen(listener);
    return () => sub.cancel();
  }

  @override
  void dispose() {
    _streamController.close();
  }
}
