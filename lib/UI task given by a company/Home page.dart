import 'package:assignmentsluminar/UI%20task%20given%20by%20a%20company/Account%20Page.dart';
import 'package:assignmentsluminar/UI%20task%20given%20by%20a%20company/Rewards%20Page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Screens = [
    const Text('Home'),
    const Text("Home"),
    RewardsPage(),
    AccountPage()
  ];
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          iconSize: 30,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: index,
          onTap: (tapindex) {
            setState(
              () {
                index = tapindex;
              },
            );
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.border_all), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet_giftcard), label: "Wallet"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: "Account")
          ]),
      body: Screens[index],
    );
  }
}
