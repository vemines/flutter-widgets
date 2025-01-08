import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoListTileScreen extends StatelessWidget {
  const CupertinoListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoListTile Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("Default CupertinoListTile", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoListTile(
              title: Text("Default Title"),
              subtitle: Text("Default Subtitle"),
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoListTile - With Leading Icon",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoListTile(
              leading: Icon(CupertinoIcons.heart_fill, color: Colors.red),
              title: Text("Title with Leading Icon"),
              subtitle: Text("Subtitle with Leading Icon"),
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoListTile - Different Colors",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoListTile(
              backgroundColor: Colors.grey[200],
              title: Text("Colored Title", style: TextStyle(color: Colors.blue)),
              subtitle: Text("Colored Subtitle", style: TextStyle(color: Colors.green)),
              trailing: Icon(CupertinoIcons.right_chevron, color: Colors.orange),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoListTile - With Large Title",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoListTile(
              title: Text("A Very Long Title That Should Wrap", style: TextStyle(fontSize: 20)),
              subtitle: Text("Subtitle"),
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoListTile - With No Subtitle",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoListTile(
              title: Text("Title Only"),
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoListTile - With Custom Padding",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: CupertinoListTile(
                title: Text("Custom Padding"),
                subtitle: Text("Custom Padding Subtitle"),
                trailing: Icon(CupertinoIcons.right_chevron),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: CupertinoListTile.notched(
                title: Text("Custom Padding"),
                subtitle: Text("CupertinoListTile Padding notched"),
                trailing: Icon(CupertinoIcons.right_chevron),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoListTile - With Custom Trailing Widget",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoListTile(
              title: Text("Custom Trailing"),
              subtitle: Text("Custom Trailing Subtitle"),
              trailing: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(CupertinoIcons.add_circled, color: Colors.blue),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoListTile - With OnTap",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoListTile(
              title: Text("Tap Me"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Tapped!")));
              },
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoListTile - With Long Subtitle",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoListTile(
              title: Text("Long Subtitle"),
              subtitle: Text(
                  "This is a very long subtitle that should wrap to multiple lines if necessary to demonstrate the behavior of the subtitle when it is too long to fit on a single line."),
              trailing: Icon(CupertinoIcons.right_chevron),
            ),
          ],
        ),
      ),
    );
  }
}
