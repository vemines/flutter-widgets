import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Switch - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Switch(
                value: true,
                onChanged: (bool value) {},
              ),
              SizedBox(height: 16),
              Text("Switch - Active Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Switch(
                value: true,
                activeColor: Colors.blue,
                onChanged: (bool value) {},
              ),
              SizedBox(height: 16),
              Text("Switch - Inactive Track Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Switch(
                value: false,
                inactiveTrackColor: Colors.grey[300],
                onChanged: (bool value) {},
              ),
              SizedBox(height: 16),
              Text("Switch - Active Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Switch(
                value: true,
                activeColor: Colors.green,
                onChanged: (bool value) {},
              ),
              SizedBox(height: 16),
              Text("Switch - Active Thumb Image", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Switch(
                value: true,
                activeThumbImage: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                onChanged: (bool value) {},
              ),
              SizedBox(height: 16),
              Text("Switch - Inactive Thumb Image", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Switch(
                value: false,
                inactiveThumbImage: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                onChanged: (bool value) {},
              ),
              SizedBox(height: 16),
              Text("Switch - Material Tap Target Size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Switch(
                value: true,
                materialTapTargetSize: MaterialTapTargetSize.padded,
                onChanged: (bool value) {},
              ),
              SizedBox(height: 16),
              Text("Switch - With Focus Node", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Focus(
                child: Switch(
                  value: true,
                  onChanged: (bool value) {},
                ),
              ),
              SizedBox(height: 16),
              Text("Switch - With Drag Start Behavior",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Switch(
                value: true,
                dragStartBehavior: DragStartBehavior.down,
                onChanged: (bool value) {},
              ),
              SizedBox(height: 16),
              Text("Switch - With Mouse Cursor", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Switch(
                  value: true,
                  onChanged: (bool value) {},
                ),
              ),
              SizedBox(height: 16),
              Text("Switch - With Overlay Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Switch(
                value: true,
                overlayColor: WidgetStateProperty.all(Colors.red.withValues(alpha: 255 * 0.2)),
                onChanged: (bool value) {},
              ),
              SizedBox(height: 16),
              Text("Switch - With Splash Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Switch(
                value: true,
                splashRadius: 30,
                onChanged: (bool value) {},
              ),
              SizedBox(height: 16),
              Text("Switch - With Focus Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Focus(
                child: Switch(
                  value: true,
                  focusColor: Colors.yellow,
                  onChanged: (bool value) {},
                ),
              ),
              SizedBox(height: 16),
              Text("Switch - With Hover Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              MouseRegion(
                child: Switch(
                  value: true,
                  hoverColor: Colors.purple,
                  onChanged: (bool value) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
