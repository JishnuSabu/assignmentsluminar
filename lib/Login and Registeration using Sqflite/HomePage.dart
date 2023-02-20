import 'package:assignmentsluminar/Login%20and%20Registeration%20using%20Sqflite/Login_Signup%20page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final data;

  const Home({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = data[0]['name'];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome $name"),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('Success'),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_Signup(),));
          }, child: Text("Logout"))
        ],
      ),
    );
  }
}
