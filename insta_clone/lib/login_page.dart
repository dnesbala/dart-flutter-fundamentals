import 'package:firstapp/home_screen.dart';
import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";
  bool showPassword = false;

  void login() {
    // Check if email is empty
    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Email is required"),
        ),
      );
    }

    // Check if password is empty
    if (password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Password is required"),
        ),
      );
    }

    // TEST: suppose correct email: test@test.com and password: test1234
    if (email == "test@test.com" && password == "test1234") {
      // print("success");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login Success"),
        ),
      );
      // If login is success, display HomeScreen
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login Failed : Either email or password is invalid"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (String value) {
                  // print(value);
                  setState(() {
                    email = value;
                  });
                  print(email);
                }),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.key),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: !showPassword
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                ),
              ),
              obscureText: !showPassword,
              onChanged: (String value) {
                setState(() {
                  password = value;
                });
              },
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  login();
                },
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
