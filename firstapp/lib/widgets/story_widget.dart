import 'package:firstapp/models/story_model.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final Story story;
  const StoryWidget({
    Key? key,
    required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.pink,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 28,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(story.photo),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(story.username),
      ],
    );
  }
}
