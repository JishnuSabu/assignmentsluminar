import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MusicHome(),
  debugShowCheckedModeBanner: false,));
}

class MusicHome extends StatefulWidget {
  @override
  State<MusicHome> createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.play_lesson,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
              ),
              label: '')
        ],
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Musify.",
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent[100]),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Suggested playlists",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent[100]),
              ),
            ),
          ),
          Container(
            height: 260,
            width: double.infinity,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 19),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 220,
                        width: 220,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/Images/Car.jpg"))),
                        child: const Center(
                          child: Text(
                            "CAR MUSIC",
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 220,
                        width: 220,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/Images/Rock music.jpg"))),
                        child: const Center(
                          child: Text(
                            "Adrenaline \nRock",
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 220,
                        width: 220,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/Images/melody song.jpg"))),
                        child: const Center(
                          child: Text(
                            "COVER SONGS",
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 19),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recommended for you",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent[100]),
              ),
            ),
          ),
          SongsTile()
        ],
      )),
    );
  }
}

class SongsTile extends StatelessWidget {
  final SingersImg = [
    "assets/Images/Taylor Swift.jpg",
    "assets/Images/Unholy.webp",
    "assets/Images/Lift me up.jpg",
    "assets/Images/Depression.jpg",
    "assets/Images/Im good.png",
    "assets/Images/Justin.jpg",
    "assets/Images/Billie_Eilish_and_Khalid_-_Lovely.png",
    "assets/Images/Shape_Of_You_(Official_Single_Cover)_by_Ed_Sheeran.png"
  ];
  final Song = [
    "Hero",
    "Unholy",
    "Lift Me Up",
    "Depression",
    "Im Good",
    "Baby",
    "Lovely",
    "Shape of You"
  ];
  final Singer = [
    "Taylor Swift",
    "Sam Smith,Kim Petras",
    "Rihanna",
    "Dax",
    "David Guetta,Bebe Rexha",
    "Justin Bieber",
    "Billie Eilish,Khalid",
    "Ed Sheeran"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: SingersImg.length,
      shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
      return ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 60,
            width: 70,
            color: Colors.blue,
            child: Image(
              fit: BoxFit.fill,
                image: AssetImage(SingersImg[index])),),
        ),
        title: Text(Song[index],  style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent[100]),),
        subtitle: Text(Singer[index],  style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white),),
        trailing: SizedBox(
          height: 50,
          width: 79,
          child: Row(children: const [
            SizedBox(width: 6),
            Icon(Icons.star_border_outlined,color: Colors.pinkAccent,size: 28,),
            SizedBox(width: 14),
            Icon(Icons.download_outlined,color: Colors.pinkAccent,size: 28,)
          ]),
        ),
      );
    });
  }
}
