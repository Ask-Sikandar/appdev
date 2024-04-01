import '../Models/todo_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TodoService{
  List<Todo> list = [];
  Future<List<Todo>> getAllTodos() async {
    http.Response res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if(res.statusCode == 200){
      var jsonResponse = jsonDecode(res.body);
      for(var item in jsonResponse) {
        list.add(Todo.fromJson(item));
      }
      return list;
    } else {
      throw Exception('Error');
    }
  }

}