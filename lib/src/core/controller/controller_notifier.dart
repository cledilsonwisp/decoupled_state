// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:decoupled_state/src/core/controller/controller.dart';

abstract class ControllerNotifier<T> implements Controller<T> {
  final _changeNotifier = ChangeNotifier();

  T _state;

  ControllerNotifier(this._state);

  @override
  T get state => _state;

  @override
  void dispatch(T state) {
    _state = state;
    _changeNotifier.notifyListeners();
  }

  @override
  ControllerDispose connect(void Function(T p1) listener) {
    void listener0() => listener(state);

    _changeNotifier.addListener(listener0);
    return () => _changeNotifier.removeListener(listener0);
  }

  @override
  void dispose() {
    _changeNotifier.dispose();
  }
}
