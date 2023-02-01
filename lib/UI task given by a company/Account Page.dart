import 'package:assignmentsluminar/UI%20task%20given%20by%20a%20company/Invoice%20Page.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[100],
        body: SingleChildScrollView(
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                child: Container(
                  height: 460,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 58.0, left: 20),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                          builder: (context) => InvoicePage()));
                                },
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 4,
                                            offset: Offset(3, 3))
                                      ]),
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.blue[800],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 123,
                            ),
                            const Text(
                              "Account",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 43,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                          height: 147,
                          width: 147,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(width: 5,
                                  color: Colors.white)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(19),
                            child: const Image(
                              image: AssetImage("assets/Images/Men side.jpeg"),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Dennis Callis",
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mail,
                            color: Colors.blue[800],
                            size: 20,
                          ),
                          const Text(
                            "denniscallis@gmail.com",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone_iphone,
                            color: Colors.blue[800],
                            size: 20,
                          ),
                          const Text(
                            "+91 9562883899",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 30.0, right: 30, top: 10, bottom: 10),
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(fontSize: 18,
                                  color: Colors.white),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Settings()
            ])));
  }
}

class Settings extends StatelessWidget {
  List Iconss = [
    const Icon(Icons.wallet_giftcard),
    const Icon(Icons.indeterminate_check_box_outlined),
    const Icon(Icons.info),
    const Icon(Icons.logout),
  ];
  List Details = [
    "My Wallet",
    "Terms & Policies",
    "About",
    "Logout",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: Iconss.length,
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
                  leading: Iconss[index],
                  title: Text(
                    Details[index],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue[800],
                  )),
            ),
          ),
        );
      },
    );
  }
}
