// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoStore on __TodoStore, Store {
  final _$doneAtom = Atom(name: '__TodoStore.done');

  @override
  bool get done {
    _$doneAtom.reportRead();
    return super.done;
  }

  @override
  set done(bool value) {
    _$doneAtom.reportWrite(value, super.done, () {
      super.done = value;
    });
  }

  final _$__TodoStoreActionController = ActionController(name: '__TodoStore');

  @override
  void toggleDone() {
    final _$actionInfo = _$__TodoStoreActionController.startAction(
        name: '__TodoStore.toggleDone');
    try {
      return super.toggleDone();
    } finally {
      _$__TodoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
done: ${done}
    ''';
  }
}
