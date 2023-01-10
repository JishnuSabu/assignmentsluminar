import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile_with_stackk(),
  ));
}

class Profile_with_stackk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.more_vert)],
        leading: const Icon(Icons.menu_outlined),
        title: const Text("Profile"),
        titleSpacing: 100,
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: 425,
            width: 425,
            child: const Image(image: AssetImage("assets/Images/rohith cover 3.jpg")),
          ),
          Positioned(
            right: 4,
            left: 10,
            bottom: 6,
            top: 140,
            child: ClipRRect(
                child: Center(
                  child: Container(
                    height: 170,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(120),
                      child: const Image(
                        image: AssetImage("assets/Images/Rohith.jpg"),
                      ),
                    ),
                  ),
                ),),
          ),
          Positioned(
              bottom: 118,
              left: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                  child: const Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                ),
              ),),
          Positioned(
            bottom: 118,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(120),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 13,
              left: 132,
              child: Column(
                children: const [
                  Text(
                    "Rohith Sharma",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6,),
                  Text("Model/Cricketer",style: TextStyle(color: Colors.blue,),),
                ],
              ),),
        ],
      ),
    );
  }
}