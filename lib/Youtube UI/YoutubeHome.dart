import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: YoutubeHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class YoutubeHome extends StatefulWidget {
  @override
  State<YoutubeHome> createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Image(
            height: 22,
            image: AssetImage(
                "assets/Images/toppng.com-youtube-new-logo-909x204.png")),
        actions: const [
          Icon(
            Icons.cast,
            color: Colors.black,
          ),
          SizedBox(width: 14),
          Icon(
            Icons.notifications_none_outlined,
            color: Colors.black,
          ),
          SizedBox(width: 14),
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(width: 14),
          CircleAvatar(
            radius: 14,
            child: ClipOval(
                child: Image(image: AssetImage("assets/Images/Men side.jpeg"))),
          ),
          SizedBox(width: 14),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 33,
            child: ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 15),
                Container(
                  height: 7,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(6)),
                  child: const Image(
                      image: AssetImage("assets/Images/icons8-compass-24.png")),
                ),
                const VerticalDivider(
                  width: 24,
                  thickness: 1,
                ),
                Container(
                  height: 7,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(16)),
                  child: const Center(
                      child: Text(
                    "All",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 7,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: const Center(
                      child: Text(
                    "Gaming",
                    style: TextStyle(),
                  )),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 7,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: const Center(
                      child: Text(
                    "Mixes",
                    style: TextStyle(),
                  )),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 7,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: const Center(
                      child: Text(
                    "Music",
                    style: TextStyle(),
                  )),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 7,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: const Center(
                      child: Text(
                    "Mixes",
                    style: TextStyle(),
                  )),
                ),
              ],
            ),
          ),
          const SizedBox(height: 26),
          Container(
            child: Stack(
              children: [
                const Image(image: AssetImage("assets/Images/zebra.jpg")),
                Positioned(
                    right: 16,
                    bottom: 16,
                    child: Container(
                      height: 18,
                      width: 48,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(3)),
                      child: const Center(
                          child: Text(
                        "25.18",
                        style: TextStyle(color: Colors.white),
                      )),
                    )),
                Divider(
                  thickness: 7,
                  color: Colors.grey[400],
                  height: 3,
                )
              ],
            ),
          ),
          CustomListTile(
              Image: "assets/Images/dq.jpg",
              title: "Look this Zebra",
              subtitle: "Wild Life - 10K views - 2 days ago"),
          Divider(
            thickness: 7,
            color: Colors.grey[400],
            height: 3,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                    height: 20,
                    image: AssetImage("assets/Images/pngaaa.com-5593493.png")),
              ),
              Text(
                "Shorts",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              )
            ],
          ),
          CustomListView(),
          const SizedBox(height: 18,),
          Container(
            child: Stack(
              children: [
                const Image(image: AssetImage("assets/Images/wildlife.jpg")),
                Positioned(
                    right: 16,
                    bottom: 16,
                    child: Container(
                      height: 18,
                      width: 48,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(3)),
                      child: const Center(
                          child: Text(
                            "39.28",
                            style: TextStyle(color: Colors.white),
                          )),
                    )),
                Divider(
                  thickness: 7,
                  color: Colors.grey[400],
                  height: 3,
                )
              ],
            ),
          ),
          CustomListTile(
              Image: "assets/Images/mohanlal.jpg",
              title: "A day in a deepforest",
              subtitle: "Wild Hunter - 3.2 lakh views - 5 days ago"),
        ],
      )),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final Image;
  final String title;
  final String subtitle;

  CustomListTile(
      {required this.Image, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(Image)),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.more_vert),
    );
  }
}

class CustomListView extends StatelessWidget {
  List ShortsImages = [
    "assets/Images/lion attack buffalo.jpg",
    "assets/Images/lion attack deer.jpeg",
    "assets/Images/lion attack elephant.webp"
  ];
  List ShortsDescription = [
    "Lion attacks buffalo",
    "Lion attacks deer",
    "Lion attacks elephant"
  ];
  List ShortsViews = ["3.7 lakh view", "5.2 lakh view", "1.5 lakh views"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: ShortsViews.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              children: [
                Container(
                  height: 280,
                  width: 180,
                  color: Colors.blue,
                  child: Image(
                      fit: BoxFit.fill, image: AssetImage(ShortsImages[index])),
                ),
                Positioned(
                    bottom: 50,
                    left: 8,
                    child: Text(
                      ShortsDescription[index],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    )),
                Positioned(
                  bottom: 30,
                  left: 8,
                  child: Text(ShortsViews[index],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                ),
                const Positioned(
                  right:3,
                    child: Icon(Icons.more_vert,color: Colors.white,))
              ],
            ),
          );
        },
      ),
    );
  }
}
