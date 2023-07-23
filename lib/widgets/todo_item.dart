import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
        child: ListTile(
      onTap: () {
        print('Clicked on Todo Item');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      tileColor: Colors.white,
      leading: const Icon(
        Icons.check_box,
        color: tdBlue,
      ),
      title: const Text(
        'Check Mail',
        style: TextStyle(
          fontSize: 16,
          color: tdbLACK,
          decoration: TextDecoration.lineThrough,
        ),
      ),
      trailing: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: tdRed,
          borderRadius: BorderRadius.circular(30),
        ),
        child: IconButton(
          onPressed: () {
            print('Clicked on delete icon');
          },
          color: Colors.white,
          iconSize: 18,
          icon: const Icon(Icons.delete),
        ),
      ),
    ));
  }
}
