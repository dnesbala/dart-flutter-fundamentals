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
            Row(
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
            IconButton(
              onPressed: () {
                // threeDotIconOnPressed(context);
              },
              icon: Icon(Icons.more_vert_outlined),
            ),
          ],
        ),
        SizedBox(
          width: double.maxFinite,
          child: Image.asset(
            postPic,
            fit: BoxFit.cover,
          ),
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
