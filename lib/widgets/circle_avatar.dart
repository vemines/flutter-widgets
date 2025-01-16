import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatelessWidget {
  const CircleAvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CircleAvatar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CircleAvatar Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Column(
                    children: [
                      Text("Default CircleAvatar"),
                      CircleAvatar(),
                    ],
                  ),
                  Column(
                    children: [
                      Text("CircleAvatar - Red Background"),
                      CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("CircleAvatar - Large Radius"),
                      CircleAvatar(
                        radius: 50,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("CircleAvatar - Image Background"),
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://placehold.co/150x150'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("CircleAvatar - With Child Text"),
                      CircleAvatar(
                        child: Text("AB"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("CircleAvatar - With Child Icon"),
                      CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("CircleAvatar - Custom Foreground Color"),
                      CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.star),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("CircleAvatar - Min Radius"),
                      CircleAvatar(
                        minRadius: 20,
                        maxRadius: 40,
                        backgroundColor: Colors.green,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("CircleAvatar - Max Radius"),
                      CircleAvatar(
                        maxRadius: 60,
                        backgroundColor: Colors.orange,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("CircleAvatar - With Custom Border"),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.check, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("CircleAvatar - With Custom Border and Image"),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://placehold.co/100x100'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
