// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListStore on __ListStore, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '__ListStore.isFormValid'))
          .value;

  final _$newTodoTitleAtom = Atom(name: '__ListStore.newTodoTitle');

  @override
  String get newTodoTitle {
    _$newTodoTitleAtom.reportRead();
    return super.newTodoTitle;
  }

  @override
  set newTodoTitle(String value) {
    _$newTodoTitleAtom.reportWrite(value, super.newTodoTitle, () {
      super.newTodoTitle = value;
    });
  }

  final _$todoListAtom = Atom(name: '__ListStore.todoList');

  @override
  ObservableList<TodoStore> get todoList {
    _$todoListAtom.reportRead();
    return super.todoList;
  }

  @override
  set todoList(ObservableList<TodoStore> value) {
    _$todoListAtom.reportWrite(value, super.todoList, () {
      super.todoList = value;
    });
  }

  final _$__ListStoreActionController = ActionController(name: '__ListStore');

  @override
  void setNewTodoTitle(String value) {
    final _$actionInfo = _$__ListStoreActionController.startAction(
        name: '__ListStore.setNewTodoTitle');
    try {
      return super.setNewTodoTitle(value);
    } finally {
      _$__ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo =
        _$__ListStoreActionController.startAction(name: '__ListStore.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$__ListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newTodoTitle: ${newTodoTitle},
todoList: ${todoList},
isFormValid: ${isFormValid}
    ''';
  }
}
