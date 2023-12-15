import 'package:flutter/material.dart';
import 'package:todolist_app/Screens/CategoryScreen.dart';
import 'package:todolist_app/Screens/home_screen.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Drawer(
        child: ListView( 
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://cdnb.artstation.com/p/assets/images/images/063/290/923/20230527053203/smaller_square/envar-studio-riot-valorant-yorubattlepass-final-copy-1.jpg?1685183523"),
              ),
              accountName: Text("Muhammad Majid"), 
              accountEmail: Text("majidjhangail786@gmail.com"),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              ),
               ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomeScreen()));
                }
              ),
              ListTile(
                leading: Icon(Icons.view_list),
                title: Text("Category"),
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CategoryScreen()));
                }
              )
          ],
        
        ),
      ),
    );
  }
}