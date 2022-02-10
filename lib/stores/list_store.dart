import 'dart:ffi';

import 'package:liste_mobx/stores/todo_store.dart';
import 'package:mobx/mobx.dart';

part 'list_store.g.dart';

class ListStore extends __ListStore with _$ListStore {}

abstract class __ListStore with Store {
  @observable
  String newTodoTitle = "";

  @action
  void setNewTodoTitle(String value) => newTodoTitle = value;

  @computed
  bool get isFormValid => newTodoTitle.isEmpty;

  @observable
  ObservableList<TodoStore> todoList = ObservableList<TodoStore>();

  @action
  void addTodo() {
    todoList.add(TodoStore(newTodoTitle));
  }
}
