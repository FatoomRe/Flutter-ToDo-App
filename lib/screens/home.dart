import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, //the body background color
      //---------------------------------------------------------------
      appBar: _buildApp(), //see the method below
      //------------------------------------------------------------
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15, ),
          child: Column(
            children: [
              //------------------------------------------------------------
              searchBox(), //see the widget below
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: const Text(
                        'All ToDos 📋',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                    ),

                    const ToDoItem(),
                    
                  ],
                ),
              )
              //----------------------------------------------------------------
            ],
          )),
    );
  }

  //----------------------------------------------------------------
  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdbLACK,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: tdGray),
        ),
      ),
    );
  }

  //----------------------------------------------------------------
  AppBar _buildApp() { // AppBar method
    return AppBar(
      backgroundColor: Colors.black, // AppBar bcgcolor
      elevation: 0, //remove the shadow
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: tdbLACK,
            size: 30,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/x5NfRA22_400x400.jpg"),
            ),
          ),
        ],
      ),
    );
    //----------------------------------------------------------------
  }
}
