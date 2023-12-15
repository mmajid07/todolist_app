import 'package:flutter/material.dart';
import 'package:todolist_app/Screens/DrawerNavigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Center(child: Text("TodoList App")),),
      drawer: DrawerNavigation(),
      
    );
     
  }
}