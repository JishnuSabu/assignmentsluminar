import 'package:assignmentsluminar/Login%20and%20Signup/Login%20Page.dart';
import 'package:assignmentsluminar/Login%20and%20registration%20using%20Sharedpreference/Home.dart';
import 'package:assignmentsluminar/Login%20and%20registration%20using%20Sharedpreference/Login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterationPage extends StatefulWidget {
  @override
  _RegisterationPageState createState() => _RegisterationPageState();
}
class _RegisterationPageState extends State<RegisterationPage> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final name_controller = TextEditingController();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  final confirmpassword_controller = TextEditingController();
  late SharedPreferences logindata;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    confirmpassword_controller.dispose();
    name_controller.dispose();
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Shared Preferences"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Registeration Form",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: name_controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: username_controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: password_controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller:  confirmpassword_controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'confirm password',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                registerr();
              },
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }
  void registerr() async {
    logindata = await SharedPreferences.getInstance();

    String name = name_controller.text;
    String username = username_controller.text;
    String password = password_controller.text;
    String confirmpassword = confirmpassword_controller.text;

    if (name != '' && username !='' && password != '' && confirmpassword != '') {
      logindata.setString('name', name);
      logindata.setString('username', username);
      logindata.setString('password', password);
      logindata.setString('confirmpassword', confirmpassword);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));

    }
  }
}