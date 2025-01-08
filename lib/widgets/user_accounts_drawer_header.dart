import 'package:flutter/material.dart';

class UserAccountsDrawerHeaderScreen extends StatelessWidget {
  const UserAccountsDrawerHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UserAccountsDrawerHeader Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("UserAccountsDrawerHeader - Default", style: TextStyle(fontWeight: FontWeight.bold)),
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("john.doe@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text("JD"),
              ),
            ),
            SizedBox(height: 20),
            Text("UserAccountsDrawerHeader - Custom Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text("Jane Smith", style: TextStyle(color: Colors.white)),
              accountEmail: Text("jane.smith@example.com", style: TextStyle(color: Colors.white)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("JS", style: TextStyle(color: Colors.blue)),
              ),
            ),
            SizedBox(height: 20),
            Text("UserAccountsDrawerHeader - Custom Text Styles", style: TextStyle(fontWeight: FontWeight.bold)),
            UserAccountsDrawerHeader(
              accountName: Text("Peter Pan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              accountEmail: Text("peter.pan@neverland.com", style: TextStyle(fontStyle: FontStyle.italic)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text("PP", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 20),
            Text("UserAccountsDrawerHeader - Custom Padding", style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: UserAccountsDrawerHeader(
                accountName: Text("Alice Wonderland"),
                accountEmail: Text("alice@wonderland.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Text("AW", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("UserAccountsDrawerHeader - Custom Decoration and other properties", style: TextStyle(fontWeight: FontWeight.bold)),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://placekitten.com/200/300"),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text("Bob Builder", style: TextStyle(color: Colors.white)),
              accountEmail: Text("bob@builder.com", style: TextStyle(color: Colors.white)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text("BB", style: TextStyle(color: Colors.white)),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text("O1", style: TextStyle(color: Colors.white)),
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text("O2", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("UserAccountsDrawerHeader - With a simple Container", style: TextStyle(fontWeight: FontWeight.bold)),
            UserAccountsDrawerHeader(
              accountName: Text("Container Example"),
              accountEmail: Text("container@example.com"),
              currentAccountPicture: Container(
                width: 50,
                height: 50,
                color: Colors.lightBlue,
                child: Center(child: Text("C", style: TextStyle(color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
