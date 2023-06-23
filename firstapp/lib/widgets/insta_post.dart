import 'package:firstapp/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class InstaPost extends StatelessWidget {
  final String profilePic;
  final String username;
  final String postPic;

  const InstaPost({
    Key? key,
    required this.profilePic,
    required this.username,
    required this.postPic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(
                      profilePic,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(username, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                // threeDotIconOnPressed(context);
              },
              icon: Icon(Icons.more_vert_outlined),
            ),
          ],
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Image.asset(
                postPic,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10, top: 8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                "1/4",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          "Liked by user1 and user2",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(Icons.favorite_outline, size: 30),
            SizedBox(width: 5),
            Icon(Icons.mode_comment_outlined, size: 30),
            Spacer(),
            Icon(Icons.bookmark_border, size: 30),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
