import 'package:assignmentsluminar/UI%20task%20given%20by%20a%20company/DatePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: InvoicePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class InvoicePage extends StatefulWidget {
  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[100],
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                "Enter the invoice number",
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
                        hintText: "Eg: 6837388933",
                        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                        border: InputBorder.none),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 48.0),
              child: Image(
                height: 330,
                  image: AssetImage(
                      "assets/Images/Lovepik_com-450122306-A scalable flat illustration of payment invoice.png")),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {},
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
                            style: TextStyle(fontSize: 18, color: Colors.blue),
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InvoiceDate()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 45.0, right: 45, top: 15, bottom: 15),
                      child: Row(
                        children: const [
                          Text(
                            "Next",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 17,
                          ),
                        ],
                      ),
                    ))
              ],
            )
          ]),
        ));
  }
}
