import 'package:flutter/material.dart';
import 'package:flutter_app/Messenger/Chat_Screen.dart';

class ChatItem extends StatelessWidget {
  ChatItem({super.key, required this.user});

  Users user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment(0.9, 0.9),
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
              ),
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
              child: CircleAvatar(radius: 6, backgroundColor: Colors.green),
            ),
          ],
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      user.message!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        CircleAvatar(radius: 3, backgroundColor: Colors.blue),
                        Text(user.time!, style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
