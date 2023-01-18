import 'package:assignmentsluminar/Tourism%20App%20UI%202/Booking%20Page.dart';
import 'package:assignmentsluminar/Tourism%20App%20UI%202/Explore%20Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPageEx(),
    routes: {"NewBookingPage": (context) => BookingPage()},
  ));
}

class LoginPageEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
                height: 90,
                child: const Image(
                    image: AssetImage("assets/Images/clipart19845.png"))),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 12.0),
                  primary: Colors.black,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ExplorePage()));
                },
                child: const Text("Log In")),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "- Or -",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 45.0, vertical: 7.0),
                ),
                onPressed: () {
                  //OnPressed Logic
                },
                label: const Text("Login With Facebook"),
                icon: const Icon(
                  Icons.facebook,
                  size: 33,
                ),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  //OnPressed Logic
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                ),
                icon: IconButton(
                  onPressed: () {},
                  icon:
                      SvgPicture.asset("assets/SVG/icons8-twitter-circled.svg"),
                  color: Colors.white,
                ),
                label: const Text("Login With Twitter")),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  //OnPressed Logic
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.brown,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                ),
                icon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/SVG/icons8-google.svg",
                      height: 31),
                  color: Colors.white,
                ),
                label: const Text(
                  "Login With Google",
                )),
          ],
        ),
      ),
    );
  }
}
