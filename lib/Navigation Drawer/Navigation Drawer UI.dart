import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NavDrawer(),
  ));
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.orange),
          child: Drawer(
            child: Container(
              decoration: const BoxDecoration(gradient:LinearGradient(begin: Alignment.topRight,
                end: Alignment.bottomLeft,colors: [
                    Colors.blue,
                    Colors.red,
                  ]) ),
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: ListTile(leading: CircleAvatar(radius: 25,
                      backgroundImage: AssetImage("assets/Images/Dhoni.jpeg"),),
                      title: Text("MS Dhoni",
                        style: TextStyle(fontSize: 19, color: Colors.white),),
                      subtitle: Text("Adminstrator",
                        style: TextStyle(fontSize: 11, color: Colors.white),),
                      trailing: Icon(
                        Icons.close, size: 27, color: Colors.white,),),
                  ),
                  const SizedBox(height: 50,),
                  CustomListTile(Icons: Icons.dashboard_outlined, names: 'Dashboard',),
                  const SizedBox(height: 23,),
                  CustomListTile(Icons: Icons.fact_check_outlined, names: 'Leads',),
                  const SizedBox(height: 23,),
                  CustomListTile(Icons: Icons.people_outline, names: 'Clients',),
                  const SizedBox(height: 23,),
                  CustomListTile(Icons: Icons.rocket_outlined, names: 'Projects',),
                  const SizedBox(height: 23,),
                  CustomListTile(Icons: Icons.thumbs_up_down_outlined, names: 'Partners',),
                  const SizedBox(height: 23,),
                  CustomListTile(Icons: Icons.subscriptions_outlined, names: 'Subscription',),
                  const SizedBox(height: 23,),
                  CustomListTile(Icons: Icons.payments_outlined, names: 'Payments',),
                  const SizedBox(height: 23,),
                  CustomListTile(Icons: Icons.supervised_user_circle_outlined, names: 'Users',),
                  const SizedBox(height: 23,),
                  CustomListTile(Icons: Icons.my_library_books_outlined, names: 'Library',),
                  const SizedBox(height: 83,),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: ElevatedButton(onPressed: (){}, child: const Text("Logout"),  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(left: 70, right: 70),
                      primary: Colors.blueAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))
                    ),),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData Icons;
  final String names;

  CustomListTile({
    required this.Icons, required this.names
  });

  @override
  Widget build(BuildContext context) {
    return Row(children : [
      const SizedBox(width: 30,),
    Icon(Icons,size: 30,color: Colors.white,),
        const SizedBox(width: 50,),
        Text(names,style: const TextStyle(fontSize: 16,color: Colors.white),),
        ]
    );
  }

}