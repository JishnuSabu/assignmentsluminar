import 'package:assignmentsluminar/UI%20task%20given%20by%20a%20company/Home%20page.dart';
import 'package:assignmentsluminar/UI%20task%20given%20by%20a%20company/Invoice%20Page.dart';
import 'package:flutter/material.dart';

class InvoiceDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[100],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 60),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(6, 6))
                        ]),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.blue[800],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0, top: 50),
                child: Text(
                  "Select Invoice Date",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.5,
                              offset: Offset(3, 3))
                        ]),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Eg: December 12,2022",
                          suffixIcon: Icon(Icons.calendar_today_outlined),
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.grey),
                          border: InputBorder.none),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0),
                child: Text(
                  "Enter the Amount",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.5,
                              offset: Offset(3, 3))
                        ]),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Eg: 2500",
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.grey),
                          border: InputBorder.none),
                    )),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 48.0),
                child: Image(
                    height: 330,
                    image: AssetImage(
                        "assets/Images/Lovepik_com-450122306-A scalable flat illustration of payment invoice.png")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InvoicePage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 45.0, right: 45, top: 15, bottom: 15),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.blue,
                              size: 17,
                            ),
                            Text(
                              "Back",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 45.0, right: 45, top: 15, bottom: 15),
                        child: Row(
                          children: const [
                            Text(
                              "Submit",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            Icon(
                              Icons.gpp_good_outlined,
                              size: 17,
                            ),
                          ],
                        ),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
