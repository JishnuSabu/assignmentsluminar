
import 'package:assignmentsluminar/hive%20demo%20using%20adaptorclass/HomePage.dart';
import 'package:assignmentsluminar/hive%20demo%20using%20adaptorclass/SignUp%20Page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:rive/rive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("user");
  runApp(GetMaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          const RiveAnimation.asset(
            "assets/rive/4115-8502-pomodoro-design-variation (1).riv",
            fit: BoxFit.cover,
          ),
          Positioned(
              top: 200,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      TextField(
                        controller: email_controller,
                        decoration: const InputDecoration(hintText: "Email"),
                      ),
                      TextField(
                        controller: password_controller,
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: const InputDecoration(hintText: "Password"),
                      ),
                      SizedBox(
                        height: 40,
                        width: 200,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(()=>HomePage());
                            }, child: const Text("Login Here")),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(()=>SignUpPage());
                          },
                          child: const Text("Not a user?SignUp here"))
                    ],
                  ))),
        ],
      )),
    );
  }
}
