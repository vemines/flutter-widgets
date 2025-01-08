import 'package:flutter/material.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banner Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Banner - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              Banner(
                message: 'Default Banner',
                location: BannerLocation.topEnd,
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: Text('Content inside the banner'),
                ),
              ),
              SizedBox(height: 20),
              Text("Banner - Red Background", style: TextStyle(fontWeight: FontWeight.bold)),
              Banner(
                message: 'Red Banner',
                location: BannerLocation.topStart,
                color: Colors.red,
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: Text('Content inside the banner'),
                ),
              ),
              SizedBox(height: 20),
              Text("Banner - Bottom End", style: TextStyle(fontWeight: FontWeight.bold)),
              Banner(
                message: 'Bottom End',
                location: BannerLocation.bottomEnd,
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: Text('Content inside the banner'),
                ),
              ),
              SizedBox(height: 20),
              Text("Banner - Bottom Start", style: TextStyle(fontWeight: FontWeight.bold)),
              Banner(
                message: 'Bottom Start',
                location: BannerLocation.bottomStart,
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: Text('Content inside the banner'),
                ),
              ),
              SizedBox(height: 20),
              Text("Banner - Large Text", style: TextStyle(fontWeight: FontWeight.bold)),
              Banner(
                message: 'Large Text',
                location: BannerLocation.topEnd,
                textStyle: TextStyle(fontSize: 20, color: Colors.white),
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: Text('Content inside the banner'),
                ),
              ),
              SizedBox(height: 20),
              Text("Banner - Custom Color and Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              Banner(
                message: 'Custom Style',
                location: BannerLocation.topStart,
                color: Colors.green,
                textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: Text('Content inside the banner'),
                ),
              ),
              SizedBox(height: 20),
              Text("Banner - Wrapped Text", style: TextStyle(fontWeight: FontWeight.bold)),
              Banner(
                message: 'Wrapped Text',
                location: BannerLocation.topEnd,
                child: Text('This is some text wrapped by the banner'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
