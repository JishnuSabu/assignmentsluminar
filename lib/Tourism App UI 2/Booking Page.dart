import 'package:assignmentsluminar/Tourism%20App%20UI%202/dummyPlaceDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final placeImages = ModalRoute.of(context)?.settings.arguments;
    final Places = dummyplacedetails
        .firstWhere((data) => data["PlaceImage"] == placeImages);
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            height: 102,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                    top: 9,
                    left: 9,
                    child: Text(
                      "${Places["OpenText1"]}",
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 33,
                    left: 9,
                    child: Text(
                      "${Places["OpenText2"]}",
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                  top: 60,
                  left: 6,
                  child: RatingBar.builder(
                    itemSize: 28,
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
                      size: 14.0,
                      color: Colors.purple,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                const Positioned(
                    left: 165,
                    bottom: 18,
                    child: Text(
                      "4 Rating",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    )),
                Positioned(
                  right: 9,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage("${Places["OpenSideImage"]}")),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 270.0),
                    child: Container(
                      child: const VerticalDivider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, top: 20),
            child: Text(
              "About Places",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${Places["Description"]}",
              style: const TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.justify,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, top: 8),
            child: Text(
              "Special Facilities",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 8, top: 6),
            child: Row(
              children: const [
                Icon(
                  Icons.local_parking,
                  size: 20,
                  color: Colors.teal,
                ),
                Text(
                  "Free Parking",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 29,
                ),
                Icon(
                  Icons.access_time,
                  size: 20,
                  color: Colors.teal,
                ),
                Text(
                  "24 Hour Support",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 29,
                ),
                Icon(
                  Icons.wifi,
                  size: 20,
                  color: Colors.teal,
                ),
                Text(
                  "Free Wifi",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 8),
            child: Container(
              height: 230,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage("${Places["OpenCenterImage"]}")),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Our Packages",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              PackageButton(
                Name: 'Adult',
                Number: '02',
              ),
              PackageButton(
                Name: 'Child',
                Number: '00',
              ),
              PackageButton(
                Name: 'Night',
                Number: '02',
              ),
              PackageButton(
                Name: 'Rooms',
                Number: '01',
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40, top: 12),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  primary: Colors.black,
                ),
                onPressed: () {},
                child: const ListTile(
                  leading: Text(
                    "\$800.00",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  title: Text(
                    "Booking",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 16,
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class PackageButton extends StatelessWidget {
  final String Name;
  final String Number;

  const PackageButton({super.key, required this.Name, required this.Number});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[350],
          boxShadow: const [BoxShadow(blurRadius: 2)],
          borderRadius: BorderRadius.circular(6)),
      height: 53,
      width: 60,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                Name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                Number,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
