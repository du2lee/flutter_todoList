import 'package:flutter/material.dart';
import 'package:todolist/screen/add_todoList.dart';
import 'package:todolist/screen/important_todoList.dart';
import 'package:todolist/screen/list.dart';

class TodoListPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plans',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            )),
        actions: <Widget>[
          //중요한 계획들만
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ImportantTodoListPage();
                }));
              },
              icon: Icon(Icons.star))
        ],
      ),


      body: TodoList(),


      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return AddTodoListPage();
            }));
          }),
    );
  }
}
