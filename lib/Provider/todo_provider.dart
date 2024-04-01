import 'package:flutter/cupertino.dart';
import '../Models/todo_model.dart';
import '../Service/todo_service.dart';

class TodoProvider extends ChangeNotifier{
  final _service = TodoService();
  bool isLoading = true;
  List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  Future<void> getAllTodos() async {
    isLoading = true;
    notifyListeners();
    final response = await _service.getAllTodos();

    _todos = response;
    isLoading = false;
    notifyListeners();
  }
}