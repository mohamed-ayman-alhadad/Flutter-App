import 'package:flutter/material.dart';
import 'package:flutter_app/Messenger/Chat_Item.dart';
import 'package:flutter_app/Messenger/Story_Item_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class Users {
  String? name;
  String? message;
  String? time;
  Users({this.name, this.message, this.time});
}

class _ChatScreenState extends State<ChatScreen> {
  List<Users> users = [
    Users(
      name: "Mohamed Ayman",
      message: "Hellow, How are You?",
      time: "10:00 AM",
    ),
    Users(
      name: "Ahmed Ayman",
      message: "Hellow, How are You?",
      time: "06:00 PM",
    ),
    Users(name: "Heba Ali", message: "Hellow, How are You?", time: "10:00 AM"),
    Users(
      name: "Rawda Ayman",
      message: "Hellow, How are You?",
      time: "7:00 AM",
    ),
    Users(
      name: "Sara Ayman",
      message: "Hellow, How are You?",
      time: "12:00 AM",
    ),
    Users(
      name: "Mohamed Ebrahim",
      message: "Hellow, How are You?",
      time: "03:00 AM",
    ),
    Users(
      name: "Khaled Ayman",
      message: "Hellow, How are You?",
      time: "05:00 PM",
    ),
    Users(
      name: "Adham Alaa",
      message: "Hellow, How are You?",
      time: "01:00 PM",
    ),
    Users(
      name: "Ahmed Wael",
      message: "Hellow, How are You?",
      time: "11:00 AM",
    ),
    Users(
      name: "Alaa Ayman",
      message: "Hellow, How are You?",
      time: "09:00 AM",
    ),
    Users(
      name: "Shams Ayman",
      message: "Hellow, How are You?",
      time: "08:00 AM",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
              ),
            ),
            SizedBox(width: 10),
            Text(
              "Chats",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),

        actions: [
          IconButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 25,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          SizedBox(width: 10),
          IconButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            icon: Icon(Icons.edit, size: 25, color: Colors.white),
            onPressed: () {},
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10),
                  Text("Search", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 90,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => StoryItemWidget(),
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemCount: 20,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: 15),
                itemCount: users.length,
                itemBuilder:
                    (context, index) => ChatItem(
                      user: Users(
                        name: users[index].name,
                        message: users[index].message,
                        time: users[index].time,
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
