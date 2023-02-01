import 'package:flutter/material.dart';

class RewardsPage extends StatefulWidget {
  @override
  State<RewardsPage> createState() => _RewardsPageState();
}

class _RewardsPageState extends State<RewardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightBlue[100],
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.blue[800],
        ),
        title:
            Text("Rewards Wallet", style: TextStyle(color: Colors.blue[800])),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 210,
            width: double.infinity,
            color: Colors.lightBlue[100],
            child: Stack(children: [
              Positioned(
                left: 17,
                top: 4,
                child: Container(
                  height: 90,
                  width: 230,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(17),
                      child: const Image(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/Images/coin.webp"))),
                ),
              ),
              const Positioned(
                  left: 34,
                  top: 10,
                  child: Text(
                    "Total Balance",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )),
              const Positioned(
                  left: 24,
                  top: 28,
                  child: Text(
                    '14,345',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                bottom: 30,
                left: 27,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 70,
                    width: 206,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Redeemable",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          const Text("Points",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 30,
                            width: 100,
                            child: Row(
                              children: const [
                                Text("12000",
                                    style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 4,
                                ),
                                Flexible(
                                    child: Image(
                                        height: 20,
                                        image: AssetImage(
                                            "assets/Images/toppng.com-gold-coin-png-2207x2149.png"))),
                              ],
                            ),
                          )
                        ],
                      ),
                      const VerticalDivider(
                        width: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Expired",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          const Text("Points",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 30,
                            width: 100,
                            child: Row(
                              children: const [
                                Text("6800",
                                    style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 4,
                                ),
                                Flexible(
                                    child: Image(
                                        height: 20,
                                        image: AssetImage(
                                            "assets/Images/toppng.com-gold-coin-png-2207x2149.png"))),
                              ],
                            ),
                          )
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 260.0),
                child: Container(
                  height: 180,
                  width: 180,
                  child: const Image(
                      image: AssetImage(
                          "assets/Images/Lovepik_com-401441940-three-dimensional-gift-box.png")),
                ),
              )
            ]),
          ),
          Container(
            height: 60,
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 56.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.wallet_giftcard,
                            color: Colors.blue,
                          ),
                          Text(
                            "Rewards",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 78.0),
                    child: Container(
                      height: 60,
                      width: 207,
                      decoration: BoxDecoration(color: Colors.grey[200]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Row(
                          children: const [
                            Flexible(
                                child: Icon(
                              Icons.my_library_books,
                              color: Colors.grey,
                            )),
                            Flexible(
                                child: Text(
                              "Transactions",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ))
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
          ),
          const Divider(
            thickness: 3,
            color: Colors.blue,
            endIndent: 210,
            height: 3,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 35,
                width: 65,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.grey)),
                child: const Center(
                  child: Text(
                    "All",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 135,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.grey)),
                child: const Center(
                  child: Text(
                    "Direct Rewards",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 195,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.blue)),
                child: const Center(
                  child: Text(
                    "Indirect Rewards",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          IndirectRewards()
        ]),
      ),
    );
  }
}

class IndirectRewards extends StatelessWidget {
  List Numbers = ["26", "03", "16", "47", "16", "12", "08"];
  List OrderID = [
    "Order ID - 2145151611",
    "Order ID - 4345951641",
    "Order ID - 5645159221",
    "Order ID - 6782746225",
    "Order ID - 7135151405",
    "Order ID - 2045151609",
    "Order ID - 8145127413"
  ];
  List ValidDate = [
    "Valid Till \nDec 31,2022",
    "Valid Till \nJan 11,2023",
    "Valid Till \nJan 17,2023",
    "Valid Till \nJan 23,2023",
    "Valid Till \nFeb 02,2023",
    "Valid Till \nFeb 18,2023",
    "Valid Till \nFeb 28,2023"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: ValidDate.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: ListTile(
                leading: Text(
                  Numbers[index],
                  style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                title: Text(
                  OrderID[index],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  ValidDate[index],
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
