import 'package:assignmentsluminar/Whatsapp%20UI/Calls%20Screen.dart';
import 'package:assignmentsluminar/Whatsapp%20UI/ChatScreen.dart';
import 'package:assignmentsluminar/Whatsapp%20UI/Status%20Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TopBar(),
  ));
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: Text(
            "WhatsApp",
            style: TextStyle(fontSize: 24),
          ),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("New group")),
                const PopupMenuItem(child: Text("New broadcast")),
                const PopupMenuItem(child: Text("Linked devices")),
                const PopupMenuItem(child: Text("Starred messages")),
                const PopupMenuItem(child: Text("Payments")),
                const PopupMenuItem(child: Text("Settings"))
              ];
            })
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  child: const Tab(
                    icon: Icon(Icons.camera_alt),
                  )),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Tab(text: "Chats")),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Tab(text: "Status")),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Tab(text: "Call")),
            ],
          ),
        ),
        body: TabBarView(children: [
          Text("Camera"),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ]),
      ),
    );
  }
}
