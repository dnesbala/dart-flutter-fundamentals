import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: SizedBox(
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Profile Page"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
