import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileUI(),
  ));
}

class ProfileUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Row(
                  children: [
                    const SizedBox(width: 28),
                    const Icon(Icons.arrow_back, size: 31,),
                    const SizedBox(width: 290),
                    IconButton(onPressed: () {},
                        icon: const Icon(Icons.menu, size: 25,)),
                  ]),
            ),
            const SizedBox(height: 20,),
            const CircleAvatar(
              radius: 74,
              child: ClipOval(
                  child: Image(
                    image: AssetImage("assets/Images/Men side.jpeg"),)
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100, width: 70,
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/SVG/icons8-facebook.svg",
                      ),),
                  ),
                  Container(
                    height: 100, width: 70,
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            "assets/SVG/twitter-svgrepo-com.svg")),
                  ),
                  Container(
                    height: 100, width: 80,
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            "assets/SVG/linkedin-svgrepo-com.svg")),
                  ),
                  Container(
                    height: 59, width: 65,
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            "assets/SVG/icons8-github (1).svg")),
                  )

                ],
              ),
            ),
            Column(children: const [
              Text("Christopher",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
              Text("@Codewex", style: TextStyle(fontSize: 18),),
              SizedBox(height: 20,),
              Text("Mobile App Developer", style: TextStyle(fontSize: 26),),
            ],),
            const SizedBox(height: 30,),
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.2,
              child: SingleChildScrollView(child: Column(
              children: [
                BottomClass(icons: Icons.privacy_tip_outlined, names: "Privacy"),
                const SizedBox(height: 25,),
                BottomClass(icons: Icons.history_outlined, names: "Purchase History"),
                const SizedBox(height: 25,),
                BottomClass(icons: Icons.help_outline, names: "Privacy"),
                const SizedBox(height: 25,),
                BottomClass(icons: Icons.settings_outlined, names: "Settings"),
                const SizedBox(height: 25,),
                BottomClass(icons: Icons.person_add_alt_1_outlined, names: "Invite a friend"),
                const SizedBox(height: 25,),
                BottomClass(icons: Icons.logout_outlined, names: "Logout"),
                const SizedBox(height: 25,),
              ],
            )),)
          ],
        ),
      ),
    );
  }
}

class BottomClass extends StatelessWidget {
  final IconData icons;
  final String names;

  BottomClass({
    required this.icons, required this.names,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey[300]),
     child:
        Center(
          child: ListTile(
            leading: Icon(icons,color: Colors.blueGrey,size: 28,),
            title: Text(names),
            trailing: const Icon(Icons.arrow_forward_ios,color: Colors.blueGrey),
          ),
        )
    );
  }

}