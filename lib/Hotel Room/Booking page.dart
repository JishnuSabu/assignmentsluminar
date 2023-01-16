import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelRoom(),
  ));
}

class HotelRoom extends StatefulWidget {
  @override
  State<HotelRoom> createState() => _HotelRoomState();
}

class _HotelRoomState extends State<HotelRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      body: ListView(children: [
        Stack(children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/Images/superior-room.jpg"))),
          ),
          Positioned(
            bottom: 15,
            left: 20,
            child: Column(
              children: [
                const Text(
                  "Crown Plaza",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  "Kochi, Kerala",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: Colors.grey),
                  child: const Center(
                      child: Text(
                    "8.4/88 reviews",
                    style: TextStyle(color: Colors.white),
                  )),
                )
              ],
            ),
          ),
          const Positioned(
              bottom: 15,
              right: 15,
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 29,
              ))
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Column(
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(
                        horizontal: 1.0,
                      ),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        size: 19.0,
                        color: Colors.deepPurple,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Text(
                          ("8 Km to LuluMall"),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                children: const [
                  Text(
                    ("\$ 200"),
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                  Text(
                    "/per night",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 70.0,right: 70),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                primary: Colors.deepPurple,
                shape: const StadiumBorder(),
              ),
              onPressed: () {},
              child: const Text(
                "Book Now",
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "DESCRIPTION",
                style: TextStyle(fontSize: 21),
              ),
              SizedBox(width: 28),
              Text(
                "Cochin Grand Hyatt Kochi Bolgatty is a waterfront  resort featuring two swimming pools a tennis court as well as a fitness center.All rooms are air-conditioned with private bathrooms and hot tub. Rooms and suites are well equipped with workstations & flat screen TV. The rooms offer spectacular views of lake garden city or pool.Guests have access to the business center spa & salon ids play area and some of the finest signature restaurants in the city.A continental or buffet breakfast is available daily at the property.Guests can rent a car to explore the area. Speaking English and Hindi at the reception staff are always on hand to help.Colony Clubhouse & Grill is a classic Old World grill on the hotel’s rooftop while Malabar Cafe is an all- day outlet that showcases the culinary expertize of Kerala.The property is 3.1 mi away from Durbar Hall Art Gallery which houses painting by illustrious local artists and 3.8 mi away from Greenix Village which showcases traditional music and arts. Kochi Interational Airport is 20 mi from the property and a 45-minute drive away.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),

            ],
          ),
        )
      ]),
    );
  }
}
