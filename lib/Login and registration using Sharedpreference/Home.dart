import 'package:assignmentsluminar/Login%20and%20registration%20using%20Sharedpreference/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  late SharedPreferences logindata;
  late String username;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Hai $username Welcome To Luminar ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                logindata.setBool('newuser', true);
                Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => MyLoginPage()));
              },
              child: Text('LogOut'),
            )
          ],
        ),
      ),
    );
  }
}