import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridCard(),
  ));
}

class GridCard extends StatelessWidget {
  final icons = [
    const Icon(
      Icons.home,
      size: 40,
    ),
    const Icon(
      Icons.camera_alt_outlined,
      size: 40,
    ),
    const Icon(
      Icons.add_shopping_cart_rounded,
      size: 40,
    ),
    const Icon(
      Icons.phone,
      size: 40,
    ),
    const Icon(
      Icons.accessibility_new_outlined,
      size: 40,
    ),
    const Icon(
      Icons.mic_off,
      size: 40,
    ),
    const Icon(
      Icons.account_circle_rounded,
      size: 40,
    ),
    const Icon(
      Icons.add_alert_sharp,
      size: 40,
    ),
    const Icon(
      Icons.add_alarm,
      size: 40,
    ),
    const Icon(
      Icons.message_sharp,
      size: 40,
    ),
    const Icon(
      Icons.add_a_photo,
      size: 40,
    ),
    const Icon(
      Icons.facebook,
      size: 40,
    ),
  ];
  var name = [
    "Welcome home",
    "camera",
    "Heart shaker",
    "phone Call",
    "Modern Times",
    "please mute",
    "Hi All",
    "Time up",
    "Good Morning",
    "Letter",
    "Nice Photo",
    "Facebook"
  ];
  dynamic colors = [
    Colors.lightBlue,
    Colors.grey,
    Colors.red,
    Colors.pinkAccent,
    Colors.yellow,
    Colors.pinkAccent,
    Colors.yellowAccent,
    Colors.purpleAccent,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.greenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 80,
            mainAxisSpacing: 20,
            crossAxisSpacing: 5),
        itemBuilder: (context, index) {
          return Card(
            elevation: 8,
            color: colors[index],
            margin: EdgeInsets.all(6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icons[index],
                Text(name[index],
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          );
        },
        itemCount: 12,
      ),
    );
  }
}
