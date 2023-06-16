import 'package:flutter/material.dart';

class InstaHomePage extends StatelessWidget {
  const InstaHomePage({super.key});

  void threeDotIconOnPressed(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            ListTile(
              leading: Icon(Icons.favorite_border_outlined),
              minLeadingWidth: 10,
              title: Text("Add to favorites"),
            ),
            ListTile(
              leading: Icon(Icons.unpublished_rounded),
              minLeadingWidth: 10,
              title: Text("Unfollow"),
            ),
            ListTile(
              leading: Icon(Icons.report_outlined),
              minLeadingWidth: 10,
              title: Text("Report"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                        "https://st.depositphotos.com/1269204/1219/i/950/depositphotos_12196477-stock-photo-smiling-men-isolated-on-the.jpg",
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("username",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    threeDotIconOnPressed(context);
                  },
                  icon: Icon(Icons.more_vert_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
