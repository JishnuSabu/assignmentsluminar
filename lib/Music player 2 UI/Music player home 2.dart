import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MusicHome2(),
    debugShowCheckedModeBanner: false,
  ));
}

class MusicHome2 extends StatefulWidget {
  @override
  State<MusicHome2> createState() => _MusicHome2State();
}

class _MusicHome2State extends State<MusicHome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
                color: Colors.pinkAccent,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.pinkAccent,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book_rounded,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.pinkAccent,
              ),
              label: '')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Playlists",
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent[100]),
        ),
      ),
      body: ListView(children: [
        Column(children: [
          Container(
            height: 55,
            width: 389,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(28)),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8,
              ),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: "Search...",
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.pink,
                    )),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(children: [MusicGrid()]),
          )
        ]),
      ]),
    );
  }
}

class MusicGrid extends StatelessWidget {
  List PlaylistImg = [
    "assets/Images/top 50 music.jpg",
    "assets/Images/pop music.jpg",
    "assets/Images/lofi remixes.jpeg",
    "assets/Images/Music Mike.jpg",
    "assets/Images/Cra music2.jpeg",
    "assets/Images/tiktok songs.jpeg",
    "assets/Images/sped up songs.jpeg",
    "assets/Images/melody songss.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: PlaylistImg.length,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(17.0),
          child: Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                  fit: BoxFit.cover, image: AssetImage(PlaylistImg[index])),
            ),
          ),
        );
      },
    );
  }
}
