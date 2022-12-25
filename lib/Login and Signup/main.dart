import 'package:assignmentsluminar/Login%20and%20Signup/Login%20Page.dart';
import 'package:assignmentsluminar/Login%20and%20Signup/SignUp%20page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          children:  [
            const SizedBox(
              height: 80,
            ),
            const Center(
                child:  Text(
              "Welcome back!",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 20,
            ),
          const Center(
                child: Text(
                  "To keep connected with us please verify your personal info",
                  style: TextStyle(fontSize: 16,color: Colors.grey),
                ),
              ),
            const Image(image: AssetImage("assets/Images/mainScreen4.png")),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:  ElevatedButton(
                  onPressed: () {  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
                    primary: Colors.deepPurpleAccent,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupPage()));},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
                  primary: Colors.pinkAccent,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Sign UP",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
