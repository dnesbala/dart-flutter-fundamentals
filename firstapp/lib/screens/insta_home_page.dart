import 'package:firstapp/data/post_data.dart';
import 'package:firstapp/data/story_data.dart';
import 'package:firstapp/widgets/insta_post.dart';
import 'package:firstapp/widgets/story_widget.dart';
import 'package:flutter/material.dart';

class InstaHomePage extends StatelessWidget {
  const InstaHomePage({super.key});

  // void threeDotIconOnPressed(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) {
  //       return Column(
  //         children: [
  //           ListTile(
  //             leading: Icon(Icons.favorite_border_outlined),
  //             minLeadingWidth: 10,
  //             title: Text("Add to favorites"),
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.unpublished_rounded),
  //             minLeadingWidth: 10,
  //             title: Text("Unfollow"),
  //           ),
  //           ListTile(
  //             leading: Icon(Icons.report_outlined),
  //             minLeadingWidth: 10,
  //             title: Text("Report"),
  //           )
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: "",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top AppBar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Instagram",
                      style:
                          TextStyle(fontSize: 26, fontStyle: FontStyle.italic)),
                  Row(
                    children: [
                      Icon(Icons.favorite_outline, size: 28),
                      SizedBox(width: 10),
                      Icon(Icons.search_outlined, size: 28),
                      SizedBox(width: 10),
                      Icon(Icons.message_outlined, size: 28),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Stories Section"),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: stories
                      .map((story) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: StoryWidget(story: story),
                          ))
                      .toList(),
                ),
              ),
              SizedBox(height: 20),
              ...posts
                  .map((e) => InstaPost(
                        profilePic: e["profile_pic"],
                        username: e["username"],
                        postPic: e["upload_pic"],
                      ))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
