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
      body: Row(
        children: [
          Expanded(
            child: Container(
              
              height: double.infinity,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height:double.infinity,
              color: Colors.green,
              child: Center(child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.pink,
                  )
                ]
              )
                 
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}