import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/todo.dart';

Future<Todo> fetchTodo() async {
  final response = await http
    .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

  if (response.statusCode == 200) {
    return Todo.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to fetch Todo');
  }
}

Future<List<Todo>> fetchTodos() async {
  final response = await http
    .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/'));

  if (response.statusCode == 200) {
    // Parse top level array
    List<dynamic> dynamicList = jsonDecode(response.body);
    
    // Map array elements to Todo model and return as List<Todo>
    return dynamicList.map((rawTodo) {
      return Todo.fromJson(rawTodo as Map<String, dynamic>);
    }).toList();
  } else {
    throw Exception(('Failed to fetch Todos'));
  }
}
