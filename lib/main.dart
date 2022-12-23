import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ContactBook()));
}

class ContactBook extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContactBookState();
}

class _ContactBookState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: Colors.grey[300],
            child: const ListTile(
              title: Text("Search contacts"),
              leading: Icon(Icons.menu),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          const ListTile(
            title: Text(
              "Customised view · All accounts · 300 contacts",
              style: TextStyle(fontSize: 14),
            ),
            leading: Icon(Icons.people),
          ),
          ListTile(
            title: const Text("Jishnu", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Icon(Icons.star),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Arjun", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Icon(Icons.star),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Ajith", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Icon(Icons.star),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Vishnu", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Icon(Icons.star),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Anju", style: const TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Icon(Icons.star),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Anand", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " A",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                    height: 45,
                    width: 45,
                    child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Ajmal", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " A",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),

                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Christin", style: const TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " C",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Fasil", style: const TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " F",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Jishnu", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " J",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Nandu", style: const TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " N",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Navya", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " N",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Nithin", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " N",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Sanjay", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " S",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Surya", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " S",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Thomas", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " T",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
          ListTile(
            title: const Text("Ullas", style: TextStyle(fontSize: 20)),
            leading: Wrap(
              children: [
                const Text(
                  " U",
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 45,
                  width: 45,
                  child:Center(child: Text("A",style: TextStyle(fontSize: 30,color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.circular(40),),
                ),
              ],
            ),
            trailing: Wrap(
              children: const [
                Icon(Icons.message),
                SizedBox(width: 30),
                Icon(Icons.call),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
