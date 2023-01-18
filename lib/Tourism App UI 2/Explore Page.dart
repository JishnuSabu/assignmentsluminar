import 'package:assignmentsluminar/Tourism%20App%20UI%202/dummyPlaceDetails.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 35,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 75.0),
          child: Row(children: const [
            Text(
              "Go",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Fast",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        actions: const [
          CircleAvatar(
            radius: 40,
            child: ClipOval(
                child: Image(image: AssetImage("assets/Images/Men side.jpeg"))),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search here",
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11, right: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular Places",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Text("View All",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            PopularPlace(),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 85, vertical: 13)),
                onPressed: () {},
                child: const Text(
                  "Explore Now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}

class PopularPlace extends StatefulWidget {
  @override
  State<PopularPlace> createState() => _PopularPlaceState();
}

class _PopularPlaceState extends State<PopularPlace> {
  @override
  Widget build(BuildContext context) {
    return GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
        ),
        children: dummyplacedetails.map((CustomVariable) {
          return GestureDetector(
            onTap: () => gotonext(context, CustomVariable["PlaceImage"]),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              AssetImage("${CustomVariable["PlaceImage"]}"))),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 92,
                        left: 31,
                        child: Text(
                          "${CustomVariable["PlaceName"]}",
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.purple),
                            child: Center(
                              child: Text(
                                "${CustomVariable["Price"]}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                      )
                    ],
                  )),
            ),
          );
        }).toList());
  }
}

void gotonext(BuildContext context, customVariable) {
  Navigator.of(context).pushNamed("NewBookingPage", arguments: customVariable);
}
