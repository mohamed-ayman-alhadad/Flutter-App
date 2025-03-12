import 'package:flutter/material.dart';

class StoryItemWidget extends StatelessWidget {
  const StoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
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
          Text(
            "Mohamed Ayman",
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
