import 'package:flutter/material.dart';

class DraggableScrollableSheetScreen extends StatelessWidget {
  const DraggableScrollableSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DraggableScrollableSheet Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("DraggableScrollableSheet Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),

              // Variation 1: Default DraggableScrollableSheet
              Text("Default DraggableScrollableSheet", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: DraggableScrollableSheet(
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                      color: Colors.blue[100],
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 25,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(title: Text('Item $index'));
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),

              // Variation 2: Initial Child Size
              Text("DraggableScrollableSheet - Initial Child Size 0.3", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: DraggableScrollableSheet(
                  initialChildSize: 0.3,
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                      color: Colors.green[100],
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 25,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(title: Text('Item $index'));
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),

              // Variation 3: Min and Max Child Size
              Text("DraggableScrollableSheet - Min 0.2, Max 0.8", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: DraggableScrollableSheet(
                  minChildSize: 0.2,
                  maxChildSize: 0.8,
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                      color: Colors.red[100],
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 25,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(title: Text('Item $index'));
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),

              // Variation 4: Expanded DraggableScrollableSheet
              Text("DraggableScrollableSheet - Expanded", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Expanded(
                child: DraggableScrollableSheet(
                  expand: true,
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                      color: Colors.yellow[100],
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 25,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(title: Text('Item $index'));
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),

              // Variation 5: DraggableScrollableSheet with a different color
              Text("DraggableScrollableSheet - Different Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: DraggableScrollableSheet(
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                      color: Colors.purple[100],
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 25,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(title: Text('Item $index'));
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),

              // Variation 6: DraggableScrollableSheet with a different background color
              Text("DraggableScrollableSheet - Different Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                height: 200,
                color: Colors.grey[300],
                child: DraggableScrollableSheet(
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                      color: Colors.orange[100],
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 25,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(title: Text('Item $index'));
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
