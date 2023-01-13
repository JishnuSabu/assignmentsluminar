import 'package:assignmentsluminar/Farm%20Fresh/Farm%20Fresh%20UI.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ExpWithLottie(),
  ));
}

class ExpWithLottie extends StatefulWidget {
  @override
  State<ExpWithLottie> createState() => _ExpWithLottieState();
}

class _ExpWithLottieState extends State<ExpWithLottie> {
  var Card1 = GlobalKey<ExpansionTileCardState>();
  var Card2 = GlobalKey<ExpansionTileCardState>();
  var Card3 = GlobalKey<ExpansionTileCardState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EXPERIENCE"),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Stack(children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Colors.grey,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Lottie.asset(
                    "assets/Lottie/33183-ufo-camping-scene.json",
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: Colors.white,
                ),
                child: ExpansionTileCard(
                  baseColor: Colors.transparent,
                  expandedColor: Colors.blue,
                  key: Card1,
                  title: const Text(
                    "Flutter Internship",
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Text(
                      "6 months+",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  children: [
                    Card(
                      child: Column(
                        children: [
                          const SizedBox(height: 45),
                          const Text(
                            "The Course is Certified by National Council for Technology & Training. NACTET certificates have got high credibility among employers in India and abroad especially in Middle East and other parts of the worl. All certificates issued by NACTET can be attested byMinistry of External affairs-Govt. of India andby the embassies of almost all countries",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.justify,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 12.0),
                            child: Text(
                              "Fees 25K",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ButtonBar(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      final valid =
                                          Card1.currentState!.expand();
                                      if (true) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    FarmFresh()));
                                      } else
                                        return null;
                                    },
                                    child: Column(
                                      children: const <Widget>[
                                        Icon(Icons.arrow_downward,
                                            color: Colors.green),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.0),
                                        ),
                                        Text(
                                          'Open',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              ButtonBar(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Card1.currentState?.collapse();
                                    },
                                    child: Column(
                                      children: const <Widget>[
                                        Icon(Icons.arrow_upward,
                                            color: Colors.green),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.0),
                                        ),
                                        Text(
                                          'Close',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              ButtonBar(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Card1.currentState?.toggleExpansion();
                                    },
                                    child: Column(
                                      children: const <Widget>[
                                        Icon(Icons.swap_vert,
                                            color: Colors.green),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.0),
                                        ),
                                        Text(
                                          'Toggle',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0, bottom: 15, right: 14),
          child: Stack(children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Colors.grey,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Lottie.asset(
                    "assets/Lottie/24057-alien-abduction-on-tape.json",
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                  cardColor: Colors.white,
                  unselectedWidgetColor: Colors.white,
                ),
                child: ExpansionTileCard(
                  baseColor: Colors.transparent,
                  expandedColor: Colors.blue,
                  key: Card2,
                  title: const Text(
                    "Android Training",
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Text(
                      "2 months",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  children: [
                    Card(
                      child: Column(
                        children: [
                          const SizedBox(height: 45),
                          const Text(
                            "Build a series of apps using Jetpack Compose, the modern way to create beautiful user interfaces in your Android apps. You will write these apps in the Kotlin programming language. This course is still under development, so more units are coming soon.",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.justify,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 12.0),
                            child: Text(
                              "Fees 30K",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ButtonBar(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Card2.currentState?.expand();
                                    },
                                    child: Column(
                                      children: const <Widget>[
                                        Icon(Icons.arrow_downward,
                                            color: Colors.green),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.0),
                                        ),
                                        Text(
                                          'Open',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              ButtonBar(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Card2.currentState?.collapse();
                                    },
                                    child: Column(
                                      children: const <Widget>[
                                        Icon(Icons.arrow_upward,
                                            color: Colors.green),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.0),
                                        ),
                                        Text(
                                          'Close',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              ButtonBar(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Card2.currentState?.toggleExpansion();
                                    },
                                    child: Column(
                                      children: const <Widget>[
                                        Icon(Icons.swap_vert,
                                            color: Colors.green),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.0),
                                        ),
                                        Text(
                                          'Toggle',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0, bottom: 12, right: 14),
          child: Stack(children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Colors.grey,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Lottie.asset(
                    "assets/Lottie/103030-rickshaw-from-pakistan.json",
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    cardColor: Colors.white,
                    unselectedWidgetColor: Colors.white,
                  ),
                  child: ExpansionTileCard(
                    baseColor: Colors.transparent,
                    expandedColor: Colors.blue,
                    key: Card3,
                    title: const Text(
                      "Java Training",
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Text(
                        "2 months",
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    children: [
                      Card(
                        child: Column(
                          children: [
                            const SizedBox(height: 45),
                            const Text(
                              "The Course is Certified by National Council for Technology & Training. NACTET certificates have got high credibility among employers in India and abroad especially in Middle East and other parts of the worl. All certificates issued by NACTET can be attested byMinistry of External affairs-Govt. of India andby the embassies of almost all countries",
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.justify,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                              child: Text(
                                "Fees 40K",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ButtonBar(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Card3.currentState?.expand();
                                      },
                                      child: Column(
                                        children: const <Widget>[
                                          Icon(Icons.arrow_downward,
                                              color: Colors.green),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 2.0),
                                          ),
                                          Text(
                                            'Open',
                                            style:
                                                TextStyle(color: Colors.green),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                ButtonBar(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Card3.currentState?.collapse();
                                      },
                                      child: Column(
                                        children: const <Widget>[
                                          Icon(Icons.arrow_upward,
                                              color: Colors.green),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 2.0),
                                          ),
                                          Text(
                                            'Close',
                                            style:
                                                TextStyle(color: Colors.green),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                ButtonBar(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Card3.currentState?.toggleExpansion();
                                      },
                                      child: Column(
                                        children: const <Widget>[
                                          Icon(Icons.swap_vert,
                                              color: Colors.green),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 2.0),
                                          ),
                                          Text(
                                            'Toggle',
                                            style:
                                                TextStyle(color: Colors.green),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
