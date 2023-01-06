import 'package:assignmentsluminar/Whatsapp%20UI/ChatScreen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
          onPressed: () {},
          child:  const Icon(
            Icons.message_rounded,
            color: Colors.white,
          ),
          backgroundColor: Colors.teal[800],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomImage(
              image: const AssetImage("assets/Images/Dhoni.jpeg"),
              text1: 'Ms Dhoni',
              text2: 'Hi Dude',
              text3: '22:50',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/rohith cover 3.jpg"),
              text1: 'Rohith',
              text2: 'Good night.',
              text3: '22:40',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/Vijay.jpg"),
              text1: 'Vijay',
              text2: 'helloo broo.',
              text3: '22:36',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/surya.jpeg"),
              text1: 'Surya',
              text2: 'How are u...',
              text3: '21:50',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/Fahadh fasil.jpg"),
              text1: 'Fahadh',
              text2: 'cal me back',
              text3: '20:32',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/mohanlal.jpg"),
              text1: 'Mohanlal',
              text2: 'Hbd Dear..   ',
              text3: '20:14',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/pooja.jpg"),
              text1: 'Pooja',
              text2: 'Call me        ',
              text3: '19:06',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/kaarthi.jpg"),
              text1: 'Karthik',
              text2: 'Had ur tea? ',
              text3: '15:50',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/mammooty.jpg"),
              text1: 'Mammoty',
              text2: 'Good Eve ',
              text3: '16:08',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/dq.jpg"),
              text1: 'Dulquer',
              text2: 'Come home',
              text3: '15:50',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/diwalii.jpg"),
              text1: 'Ranveer',
              text2: 'Hpy Diwali   ',
              text3: '14:50',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/Nivin.jpeg"),
              text1: 'Nivin',
              text2: 'Hi Dude       ',
              text3: '13:23',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/dhanush.jpeg"),
              text1: 'Dhanush',
              text2: 'im busy        ',
              text3: '22:50',
            ),
            CustomImage(
              image: const AssetImage("assets/Images/Prithvi.jpeg"),
              text1: 'Pritviraj',
              text2: 'Hi bro           ',
              text3: '22:50',
            )
          ],
        ),
      ),
    );
  }
}

class CustomImage extends StatelessWidget {
  var image;
  final String text1;
  final String text2;
  final String text3;

  CustomImage(
      {required this.image,
      required this.text1,
      required this.text2,
      this.text3 = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 13),
        child: ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundImage: image,
          ),
          title: Text(
            text1,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(text2),
          trailing: Text(text3),
        ));
  }
}
