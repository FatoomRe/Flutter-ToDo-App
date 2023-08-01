import 'package:flutter/material.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(bottom: 20),
        child: ListTile(
      onTap: () {
        //print('Clicked on Todo Item');
        onToDoChanged(todo);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      tileColor: Colors.white,
      leading:  Icon(
        Icons.check_box,
        color: Color(0xFF5F52EE),
      ),
      title:  Text(
        todo.todoText!,
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF3A3A3A),
          decoration: TextDecoration.lineThrough,
        ),
      ),
      trailing: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Color(0xFFDA4040),
          borderRadius: BorderRadius.circular(30),
        ),
        child: IconButton(
          onPressed: () {
            //print('Clicked on delete icon');
            onDeleteItem(todo.id);
          },
          color: Colors.white,
          iconSize: 18,
          icon: const Icon(Icons.delete),
        ),
      ),
    ));
  }
}
