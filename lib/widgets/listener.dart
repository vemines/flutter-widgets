import 'package:flutter/material.dart';

class ListenerScreen extends StatelessWidget {
  const ListenerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listener Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Listener - Example", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Listener(
              onPointerDown: (event) {
                print("Pointer Down: ${event.position}");
              },
              child: Container(
                color: Colors.blue.shade100,
                padding: EdgeInsets.all(20),
                child: Text("Tap Here", style: TextStyle(color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("Listener - With Pointer Up", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Listener(
              onPointerUp: (event) {
                print("Pointer Up: ${event.position}");
              },
              child: Container(
                color: Colors.green.shade100,
                padding: EdgeInsets.all(20),
                child: Text("Tap Here", style: TextStyle(color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Listener - With Pointer Move",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Listener(
              onPointerMove: (event) {
                print("Pointer Move: ${event.position}");
              },
              child: Container(
                color: Colors.orange.shade100,
                padding: EdgeInsets.all(20),
                child: Text("Move Here", style: TextStyle(color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Listener - With Pointer Signal",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Listener(
              onPointerSignal: (event) {
                print("Pointer Signal: $event");
              },
              child: Container(
                color: Colors.purple.shade100,
                padding: EdgeInsets.all(20),
                child: Text("Scroll Here", style: TextStyle(color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("Listener - With Behavior", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Listener(
              behavior: HitTestBehavior.opaque,
              onPointerDown: (event) {
                print("Opaque Pointer Down: ${event.position}");
              },
              child: Container(
                color: Colors.red.shade100,
                padding: EdgeInsets.all(20),
                child: Text("Tap Here", style: TextStyle(color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Listener - With Child", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Listener(
              onPointerDown: (event) {
                print("Pointer Down on Child: ${event.position}");
              },
              child: Container(
                color: Colors.yellow.shade100,
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text("Tap Here", style: TextStyle(color: Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Listener - Without Child (Not Recommended)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            // Listener(
            //   onPointerDown: (event) {
            //     print("Pointer Down without child: ${event.position}");
            //   },
            // ), // This will not be visible as it has no child to render and will not receive events.
            Text(
                "Listener without child is not visible and will not receive events. It needs a child to be interactive."),
          ],
        ),
      ),
    );
  }
}
