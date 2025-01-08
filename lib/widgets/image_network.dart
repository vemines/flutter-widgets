import 'package:flutter/material.dart';

class ImageNetworkScreen extends StatelessWidget {
  const ImageNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageNetwork Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ImageNetwork - Basic"),
            ),
            Image.network(
              'https://via.placeholder.com/150',
              width: 150,
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ImageNetwork - Different Size"),
            ),
            Image.network(
              'https://via.placeholder.com/200',
              width: 200,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ImageNetwork - With BoxFit.cover"),
            ),
            Image.network(
              'https://via.placeholder.com/100x200',
              width: 100,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ImageNetwork - With BoxFit.contain"),
            ),
            Image.network(
              'https://via.placeholder.com/200x100',
              width: 200,
              height: 100,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ImageNetwork - Error Builder"),
            ),
            Image.network(
              'invalid_url',
              width: 100,
              height: 100,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Center(
                    child: Text('Error', style: TextStyle(color: Colors.white)),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ImageNetwork - Loading Builder"),
            ),
            Image.network(
              'https://via.placeholder.com/150',
              width: 150,
              height: 150,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ImageNetwork - Alignment"),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.grey[200],
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.network(
                  'https://via.placeholder.com/50',
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
