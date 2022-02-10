import 'package:mobx/mobx.dart';

part 'todo_store.g.dart';

class TodoStore extends __TodoStore with _$TodoStore {
  TodoStore(String title) : super(title);
}

abstract class __TodoStore with Store {
  __TodoStore(this.title);

  final String title;

  @observable
  bool done = false;

  @action
  void toggleDone() => done = !done;
}
