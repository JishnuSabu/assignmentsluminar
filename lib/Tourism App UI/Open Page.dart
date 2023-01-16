import 'package:assignmentsluminar/Tourism%20App%20UI/place%20details.dart';
import 'package:flutter/material.dart';

class OpenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final placeImage = ModalRoute.of(context)?.settings.arguments;
    final Place =
        dummydetails.firstWhere((data) => data["Image"] == placeImage);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage("${Place["OpenImage"]}")),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 13),
              child: Text(
                "${Place["Place Name"]}",
                style: const TextStyle(color: Colors.black, fontSize: 39),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "${Place["Description"]}",
                style: const TextStyle(color: Colors.grey, fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Places to Visit",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          height: 230,
                          width: 320,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage("${Place["Visit place image 1"]}"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          height: 230,
                          width: 320,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage("${Place["Visit place image 2"]}"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          height: 230,
                          width: 320,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage("${Place["Visit place image 3"]}"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
