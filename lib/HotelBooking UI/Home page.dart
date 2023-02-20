import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HotelHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HotelHomePage extends StatefulWidget {
  @override
  State<HotelHomePage> createState() => _HotelHomePageState();
}
class _HotelHomePageState extends State<HotelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.purple,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Account"),
          ]),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 62.0),
              child: Text(
                "Hello @Jishnu",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text("Find your favourite hotel",
                  style: TextStyle(color: Colors.black)),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/Images/sky.webp"),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset(5, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for hotel",
                      hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      )),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 238.0),
            child: Text(
              "Popular Hotels",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: PopularHotels(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Hotel Packages",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              Text(
                "View more",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Packages(),
        ],
      )),
    );
  }
}

class PopularHotels extends StatelessWidget {
  List HotelImages = [
    "assets/Images/Crowne plaza.jpg",
    "assets/Images/presidency room.jpg",
    "assets/Images/hyatt.webp",
    "assets/Images/Marriott.jpeg",
    "assets/Images/TAJ.jpg"
  ];
  List HotelNamess = [
    "Crowne Plaza",
    "Presidency",
    "Grand Hyatt",
    "Marriott",
    "Taj Malabar"
  ];
  List HotelDescription = [
    "A three star hotel in \nKakkanad",
    "A four star hotel in \nEdappalli",
    "A five star hotel in \nBolgatty",
    "A four star hotel in \nKochi",
    "A four star hotel in \nCochin"
  ];
  List Reviews = [
    "\$49/night",
    "\$79/night",
    "\$149/night",
    "\$89/night",
    "\$69/night"
  ];
  List Ratingss = [
    Row(
      children: const [
        Text(
          "3.9",
          style: TextStyle(fontSize: 17, color: Colors.lightBlue),
        ),
        Icon(
          Icons.star,
          color: Colors.lightBlue,
        )
      ],
    ),
    Row(
      children: const [
        Text(
          "4.0",
          style: TextStyle(fontSize: 17, color: Colors.lightBlue),
        ),
        Icon(
          Icons.star,
          color: Colors.lightBlue,
        )
      ],
    ),
    Row(
      children: const [
        Text(
          "4.8",
          style: TextStyle(fontSize: 17, color: Colors.lightBlue),
        ),
        Icon(
          Icons.star,
          color: Colors.lightBlue,
        )
      ],
    ),
    Row(
      children: const [
        Text(
          "4.2",
          style: TextStyle(fontSize: 17, color: Colors.lightBlue),
        ),
        Icon(
          Icons.star,
          color: Colors.lightBlue,
        )
      ],
    ),
    Row(
      children: const [
        Text(
          "3.8",
          style: TextStyle(fontSize: 17, color: Colors.lightBlue),
        ),
        Icon(
          Icons.star,
          color: Colors.lightBlue,
        )
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ListView.builder(
        itemCount: HotelImages.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Card(
                  color: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      Container(
                          height: 110,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(HotelImages[index])),
                          )),
                      Positioned(
                          bottom: 92,
                          child: Text(
                            HotelNamess[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          )),
                      Positioned(
                          bottom: 47,
                          child: Text(
                            HotelDescription[index],
                            style: const TextStyle(
                                fontSize: 19, color: Colors.grey),
                          )),
                      Positioned(
                          bottom: 19,
                          child: Text(Reviews[index],
                              style: const TextStyle(
                                  fontSize: 17, color: Colors.lightBlue))),
                      Positioned(
                        bottom: 19,
                        right: 5,
                        child: Ratingss[index],
                      ),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}

class Packages extends StatelessWidget {
  List HotelImages = [
    "assets/Images/Crowne plaza.jpg",
    "assets/Images/presidency room.jpg",
    "assets/Images/hyatt.webp",
    "assets/Images/Marriott.jpeg",
    "assets/Images/TAJ.jpg"
  ];
  List HotelNamess = [
    "Crowne Plaza",
    "Presidency",
    "Grand Hyatt",
    "Marriott",
    "Taj Malabar"
  ];
  List HotelDescription = [
    "A three star hotel in Kakkanad",
    "A four star hotel in Edappalli",
    "A five star hotel in Bolgatty",
    "A four star hotel in Kochi",
    "A four star hotel in Cochin"
  ];
  List Reviews = [
    "\$49/night",
    "\$79/night",
    "\$149/night",
    "\$89/night",
    "\$69/night"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: HotelImages.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
          child: Card(
              elevation: 4,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(HotelImages[index]),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 150,
                      top: 10,
                      child: Text(
                        HotelNamess[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                  Positioned(
                      left: 150,
                      top: 38,
                      child: Text(
                        HotelDescription[index],
                        style:
                            const TextStyle(fontSize: 16, color: Colors.grey),
                      )),
                  Positioned(
                      left: 150,
                      bottom: 57,
                      child: Text(Reviews[index],
                          style: const TextStyle(
                              fontSize: 17, color: Colors.lightBlue))),
                  Positioned(
                    left: 146,
                    bottom: 20,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.car_repair,
                          color: Colors.lightBlue,
                          size: 29,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.wine_bar,
                          color: Colors.lightBlue,
                          size: 29,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.wifi,
                          color: Colors.lightBlue,
                          size: 29,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      right: 4,
                      bottom: 43,
                      child:
                          ElevatedButton(onPressed: () {}, child: Text("Book")))
                ],
              )),
        );
      },
    );
  }
}
