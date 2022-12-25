import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignupPageState();
}

class _SignupPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            const Text(
              "Sign up",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "EMAIL",
                    prefixIcon: const Icon(Icons.email),
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
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "CONFIRM PASSWORD",
                    prefixIcon: const Icon(Icons.account_box),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: const EdgeInsets.only(left: 70, right: 70),
                ),
              ),
            ),
            const Text("Already have an account?Login"),
          ],
        ),
      ),
    );
  }
}
