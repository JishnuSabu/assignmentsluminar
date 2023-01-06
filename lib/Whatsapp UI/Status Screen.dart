import 'package:assignmentsluminar/Whatsapp%20UI/ChatScreen.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
          onPressed: () {},
          child:  const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          backgroundColor: Colors.teal[800],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 75,
            width: double.infinity,
            child: Stack(children: [
              const Positioned(
                  top: 9,
                  left: 14,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage("assets/Images/cat.jpg"),
                  )),
              Positioned(
                  left: 40,
                  bottom: 12,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[800],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1.5, color: Colors.white)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )),
              Positioned(
                bottom: 22,
                left: 84,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "My Status",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Tap to add status update",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Container(
            height: 32,
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 15),
              child: Text(
                "Recent updates",
                style: TextStyle(
                    color: Colors.grey[600], fontWeight: FontWeight.bold),
              ),
            ),
          ),
          CustomImage(
              image: const AssetImage("assets/Images/dhanush.jpeg"),
              text1: "Dhanush",
              text2: "12 minutes ago",
              text3: ""),
          CustomImage(
              image: const AssetImage("assets/Images/kaarthi.jpg"),
              text1: "Karthik",
              text2: "24 minutes ago",
              text3: ""),
          CustomImage(
              image: const AssetImage("assets/Images/Vijay.jpg"),
              text1: "Vijay",
              text2: "35 minutes ago",
              text3: ""),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 32,
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 15),
                child: Text(
                  "Viewed updates",
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          CustomImage(
              image: const AssetImage("assets/Images/mohanlal.jpg"),
              text1: "Mohanlal",
              text2: "Today,10:19",
              text3: ""),
          CustomImage(
              image: const AssetImage("assets/Images/mrunal.jpg"),
              text1: "Mrunal",
              text2: "Today,9:07",
              text3: ""),
          CustomImage(
              image: const AssetImage("assets/Images/Vijay.jpg"),
              text1: "Vijay",
              text2: "Today,7:51",
              text3: ""),
          CustomImage(
              image: const AssetImage("assets/Images/Rohith.jpg"),
              text1: "Rohith",
              text2: "Today,7:02",
              text3: ""),
          CustomImage(
              image: const AssetImage("assets/Images/Prithvi.jpeg"),
              text1: "Prithvi",
              text2: "Today,6:15",
              text3: ""),
          CustomImage(
              image: const AssetImage("assets/Images/pooja.jpg"),
              text1: "Pooja",
              text2: "Yesterday,22:43",
              text3: ""),
          CustomImage(
              image: const AssetImage("assets/Images/mammooty.jpg"),
              text1: "Mammoty",
              text2: "Yesterday,20.56",
              text3: ""),
          CustomImage(
              image: const AssetImage("assets/Images/Dhoni.jpeg"),
              text1: "Dhoni",
              text2: "Yesterday,20:32",
              text3: ""),
          CustomImage(
              image: const AssetImage("assets/Images/dq.jpg"),
              text1: "Dulquer",
              text2: "Yesterday,19:38",
              text3: ""),

        ],
      ),
    );
  }
}
