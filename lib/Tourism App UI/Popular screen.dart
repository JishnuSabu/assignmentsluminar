import 'package:assignmentsluminar/Tourism%20App%20UI/Open%20Page.dart';
import 'package:assignmentsluminar/Tourism%20App%20UI/place%20details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PopularPlaceScreen(),
    routes: {
      "NewOpenPage": (context) => OpenPage(),
    },
  ));
}

class PopularPlaceScreen extends StatefulWidget {
  @override
  State<PopularPlaceScreen> createState() => _PopularPlaceScreenState();
}

class _PopularPlaceScreenState extends State<PopularPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Places",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Popular",
                style: TextStyle(color: Colors.black, fontSize: 35),
              ),
            ),
            Placesss()
          ],
        ),
      ),
    );
  }
}

class Placesss extends StatefulWidget {
  @override
  State<Placesss> createState() => _PlacesssState();
}

class _PlacesssState extends State<Placesss> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: dummydetails.map((CustomVar) {
        return GestureDetector(
          onTap: () => gotonext(context, CustomVar["Image"]),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
            child: Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("${CustomVar["Image"]}")),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green),
              child: Padding(
                padding: const EdgeInsets.only(top: 65.0, left: 15),
                child: Text(
                  "${CustomVar["Place Name"]}",
                  style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

void gotonext(BuildContext context, customVar) {
  Navigator.of(context).pushNamed("NewOpenPage", arguments: customVar);
}
