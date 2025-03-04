import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Home Screen"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                count++;
              });
            }
          , icon: Icon(Icons.add)),
          IconButton(
            onPressed: (){
              print("Pressed");
            },
            icon: Text("$count"),
          ),
          IconButton(
            onPressed: (){
              setState(() {
                count--;
              });
            }
          , icon: Icon(Icons.remove))
        ],
      ),
      
    );
  }
}