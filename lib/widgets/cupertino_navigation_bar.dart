import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoNavigationBarScreen extends StatelessWidget {
  const CupertinoNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoNavigationBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Default CupertinoNavigationBar", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CupertinoNavigationBar(
                middle: Text("Default"),
              ),
              SizedBox(height: 20),
              Text("CupertinoNavigationBar with Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CupertinoNavigationBar(
                backgroundColor: Colors.blue[100],
                middle: Text("Blue Background"),
              ),
              SizedBox(height: 20),
              Text("CupertinoNavigationBar with Leading and Trailing", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CupertinoNavigationBar(
                leading: Icon(CupertinoIcons.back),
                middle: Text("With Leading/Trailing"),
                trailing: Icon(CupertinoIcons.add),
              ),
              SizedBox(height: 20),
              Text("CupertinoNavigationBar with Large Title", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CupertinoNavigationBar(
                middle: Text("Large Title", style: TextStyle(fontSize: 24)),
                transitionBetweenRoutes: false,
              ),
              SizedBox(height: 20),
              Text("CupertinoNavigationBar with Border", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CupertinoNavigationBar(
                border: Border(bottom: BorderSide(color: Colors.red, width: 2)),
                middle: Text("Bordered"),
              ),
              SizedBox(height: 20),
              Text("CupertinoNavigationBar with Different Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CupertinoNavigationBar(
                middle: Text("Styled Text", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20),
              Text("CupertinoNavigationBar with a Container as Middle", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CupertinoNavigationBar(
                middle: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text("Container Middle"),
                ),
              ),
              SizedBox(height: 20),
              Text("CupertinoNavigationBar with a different height", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              // The height property is not directly available on CupertinoNavigationBar.
              // It's height is determined by the system.
              // We can't directly change the height of the navigation bar.
              // The following code is commented out because it will not work.
              // CupertinoNavigationBar(
              //   height: 100,
              //   middle: Text("Different Height"),
              // ),
              Text("Note: CupertinoNavigationBar height is system-defined and cannot be directly changed.", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}
