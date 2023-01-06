import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
          onPressed: () {},
          child:  const Icon(
            Icons.add_call,
            color: Colors.white,
          ),
          backgroundColor: Colors.teal[800],
        ),
      ),
      body: Column(
        children:  [
          ListTile(
            leading: const CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/Images/surya.jpeg")),
            title: const Text("Surya",style:
            const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
            subtitle
            :Row(
              children:  [
                Icon(Icons.call_received,color: Colors.teal[800],size: 16,),
                Text("Yesterday,18:53"),
              ],
            ),
            trailing: Icon(Icons.call,color: Colors.teal[800],),
          ),
          ListTile(
            leading: const CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/Images/Rohith.jpg")),
            title: const Text("Rohith",style:
            const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
            subtitle
                :Row(
              children:  [
                Icon(Icons.call_received,color: Colors.teal[800],size: 16,),
                Text("Yesterday,19:53"),
              ],
            ),
            trailing: Icon(Icons.call,color: Colors.teal[800],),
          ),
          ListTile(
            leading: const CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/Images/mohanlal.jpg")),
            title: const Text("Mohanlal",style:
            const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
            subtitle
                :Row(
              children:  [
                Icon(Icons.call_received,color: Colors.teal[800],size: 16,),
                Text("April 20,12:08"),
              ],
            ),
            trailing: Icon(Icons.call,color: Colors.teal[800],),
          ),
          ListTile(
            leading: const CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/Images/Nivin.jpeg")),
              title: const Text("Nithin",style:
            const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
            subtitle
                :Row(
              children:  [
                Icon(Icons.call_received,color: Colors.teal[800],size: 16,),
                Text("June 6, 11:37"),
              ],
            ),
            trailing: Icon(Icons.call,color: Colors.teal[800],),
          ),
          ListTile(
            leading: const CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/Images/mammooty.jpg")),
            title: const Text("Mammoty",style:
            const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
            subtitle
                :Row(
              children:  [
                Icon(Icons.call_received,color: Colors.teal[800],size: 16,),
                Text("August 30, 8:53"),
              ],
            ),
            trailing: Icon(Icons.call,color: Colors.teal[800],),
          )
        ],
      ),
    );
  }
}
