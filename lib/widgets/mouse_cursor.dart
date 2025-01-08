import 'package:flutter/material.dart';

class MouseCursorScreen extends StatelessWidget {
  const MouseCursorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MouseCursor Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("MouseCursor.defer - Default Cursor", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              MouseRegion(
                cursor: MouseCursor.defer,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text("Hover Me (Default Cursor)"),
                ),
              ),
              SizedBox(height: 20),
              Text("MouseCursor.uncontrolled - Uncontrolled Cursor", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              MouseRegion(
                cursor: MouseCursor.uncontrolled,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text("Hover Me (Uncontrolled Cursor)"),
                ),
              ),
              SizedBox(height: 20),
              Text("SystemMouseCursors.click - Click Cursor", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text("Hover Me (Click Cursor)"),
                ),
              ),
              SizedBox(height: 20),
              Text("SystemMouseCursors.text - Text Cursor", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              MouseRegion(
                cursor: SystemMouseCursors.text,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text("Hover Me (Text Cursor)"),
                ),
              ),
              SizedBox(height: 20),
              Text("SystemMouseCursors.forbidden - Forbidden Cursor", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              MouseRegion(
                cursor: SystemMouseCursors.forbidden,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text("Hover Me (Forbidden Cursor)"),
                ),
              ),
              SizedBox(height: 20),
              Text("SystemMouseCursors.resizeColumn - Resize Column Cursor", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              MouseRegion(
                cursor: SystemMouseCursors.resizeColumn,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text("Hover Me (Resize Column Cursor)"),
                ),
              ),
              SizedBox(height: 20),
              Text("SystemMouseCursors.resizeUp - Resize Up Cursor", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              MouseRegion(
                cursor: SystemMouseCursors.resizeUp,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text("Hover Me (Resize Up Cursor)"),
                ),
              ),
              SizedBox(height: 20),
              Text("SystemMouseCursors.grab - Grab Cursor", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              MouseRegion(
                cursor: SystemMouseCursors.grab,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text("Hover Me (Grab Cursor)"),
                ),
              ),
              SizedBox(height: 20),
              Text("Custom Cursor - Using a custom image", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              // Custom cursor using a custom image is not directly supported by MouseCursor.
              // It requires platform-specific implementations or using a package.
              // This example shows how to set a custom cursor using a MouseRegion, but it will not work as expected.
              // MouseRegion(
              //   cursor: MouseCursor(
              //     // This will not work as expected.
              //     // The MouseCursor class does not support custom images directly.
              //     // You would need to use a package or platform-specific code.
              //     // This is just for demonstration purposes.
              //     // image: 'assets/custom_cursor.png',
              //   ),
              //   child: Container(
              //     padding: EdgeInsets.all(10),
              //     color: Colors.grey[200],
              //     child: Text("Hover Me (Custom Cursor - Not Supported Directly)"),
              //   ),
              // ),
              Text("Custom cursor using a custom image is not directly supported by MouseCursor. It requires platform-specific implementations or using a package. This example is commented out because it will not work as expected."),
            ],
          ),
        ),
      ),
    );
  }
}
