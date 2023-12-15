

import 'package:flutter/material.dart';
import 'package:todolist_app/Screens/home_screen.dart';
 

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

_showFormDialog (BuildContext context){
  return showDialog(
    context: context, 
    builder: (param){
      return AlertDialog(
        actions: [
          ElevatedButton(
            onPressed: ()=>Navigator.pop(context), 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
           child: Text("Cancel")),
          ElevatedButton(
            onPressed: (){}, 
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
            child: Text("Save")
            ),
        ],
        title: Text("Categories Form"),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                   hintText: "Write a Category",
                   label: Text("Category")
                  ),
              ),
              TextField(
                decoration: InputDecoration(
                   hintText: "Write a Description",
                   label: Text("Description")
                  ),
              )
            ],
            )
          ),
      );
    },
    barrierDismissible: true
    );
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Category Screen"),
        leading: ElevatedButton(
          onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen())),
          child: Icon(Icons.arrow_back),
         style: ElevatedButton.styleFrom(
          elevation: 0.0,
         ),
          ),
      ),
      body: Center(child: Text("Welcome to Category Screen")),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _showFormDialog(context);
      },
      child: Icon(Icons.add),
      )
    );
  }
}