import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BankDetails(),
    debugShowCheckedModeBanner: false,
  ));
}

class BankDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          size: 31,
        ),
        title: const Text(
          "Welcome! MAUSAM",
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 24),
        ),
        actions: const [
          Icon(
            Icons.qr_code,
            size: 31,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.red[800],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 5)
                    ],
                    color: Colors.white,
                  ),
                  height: 170,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 32,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(59),
                          child: Container(
                            height: 105,
                            width: 105,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                border:
                                    Border.all(width: 3, color: Colors.red)),
                            child: const CircleAvatar(
                              radius: 48,
                              backgroundImage:
                                  AssetImage("assets/Images/Men side.jpeg"),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        right: 24,
                        top: 53,
                        child: Text(
                          "SAMMUNATI BACHAT KHATA",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      Positioned(
                        right: 59,
                        top: 75,
                        child: Row(
                          children: [
                            const Text(
                              "NPR.",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                            ),
                            const Text(
                              " 1,00,999.36",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                            ),
                            Icon(
                              Icons.remove_red_eye_rounded,
                              color: Colors.lightBlue[200],
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        right: 106,
                        top: 105,
                        child: Text(
                          "24358389693992323",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      const Positioned(
                        right: 180,
                        bottom: 6,
                        child: Text(
                          ".",
                          style: TextStyle(fontSize: 87, color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.red[800],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "WOULD YOU LIKE TO?",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
          ),
          const SizedBox(height: 6),
          PaymentDetails(),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.red[800],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "LAST TRANSACTIONS",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
          ),
          const SizedBox(height: 6),
          Transactions()
        ],
      )),
    );
  }
}

class PaymentDetails extends StatelessWidget {
  List Imagesss = [
    "assets/Images/Lovepik_com-401167654-bank-vector-building.png",
    "assets/Images/imgbin_esewa-zone-office-bayalbas-google-play-iphone-png.png",
    "assets/Images/b9d1h0i361ejdmob5n2b18sh34.png",
    "assets/Images/kisspng-electronic-funds-transfer-mobile-banking-online-ba-5b1850f03b19c0.1310686515283202402421.png",
    "assets/Images/pngwing.com.png",
    "assets/Images/pnghut_mobile-technology-iphone-android-qr-code-red-iphone.png"
  ];
  List Details = [
    "My Account",
    "Load eSewa",
    "Payment",
    "Fund Transfer",
    "Schedule Payment",
    "Scan To Pay"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Imagesss.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: Image(
                        image: AssetImage(
                      Imagesss[index],
                    )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    Details[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Transactions extends StatelessWidget {
  List Date = ["10-06-2022", "08-06-2022", "28-05-2022"];
  List Amount = ["NPR. 10,000.00", "NPR. 11,000.00", "NPR. 12,000.00"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Date.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 4)
                  ]),
              height: 90,
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: ListTile(
                    title: const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "CWDR/\n974884/98756556643345676",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        Date[index],
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    trailing: Text(
                      Amount[index],
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 90,
              width: 14,
              decoration: BoxDecoration(
                  color: Colors.red[800],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8))),
            )
          ]),
        );
      },
    );
  }
}
