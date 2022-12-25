import 'package:assignmentsluminar/Login%20and%20Signup/Login%20Page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Image(image: AssetImage("assets/Images/login icon.png")),
        const Center(
            child: Text(
          "Login with your credentials!",
          style: TextStyle(fontSize: 20,color: Colors.grey),
        )),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Enter your username",
                labelText: "USERNAME",
                prefixIcon: const Icon(Icons.account_box),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Enter your password",
                labelText: "PASSWORD",
                prefixIcon: const Icon(Icons.account_box),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
              primary: Colors.black,
              shape: const StadiumBorder(),
            ),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
        const Text(
          "Or Login using",
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 10,),
            const Icon(
              Icons.facebook,
              color: Colors.blueAccent,
              size: 35,
            ),
        const SizedBox(height: 10,),
        const Center(
            child: Text(
          "Dont have an account?Sign UP",
          style: TextStyle(fontSize: 18),
        )),
      ]),
    );
  }
}
