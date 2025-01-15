// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MouseRegionScreen extends StatelessWidget {
  const MouseRegionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MouseRegion Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("MouseRegion Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildMouseRegionVariation(
                    "MouseRegion",
                    MouseRegion(
                      onEnter: (event) => {print("Mouse Entered")},
                      onExit: (event) => print("Mouse Exited"),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.blue[100],
                        child: Text("Hover Me"),
                      ),
                    ),
                  ),
                  _buildMouseRegionVariation(
                    "MouseRegion with Cursor",
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) => print("Mouse Entered with Cursor"),
                      onExit: (event) => print("Mouse Exited with Cursor"),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.green[100],
                        child: Text("Click Me"),
                      ),
                    ),
                  ),
                  _buildMouseRegionVariation(
                    "MouseRegion with opaque",
                    MouseRegion(
                      opaque: true,
                      onEnter: (event) => print("Mouse Entered opaque"),
                      onExit: (event) => print("Mouse Exited opaque"),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.red[100],
                        child: Text("Opaque"),
                      ),
                    ),
                  ),
                  _buildMouseRegionVariation(
                    "MouseRegion with HitTestBehavior.translucent",
                    MouseRegion(
                      hitTestBehavior: HitTestBehavior.translucent,
                      onEnter: (event) => print("Mouse Entered translucent"),
                      onExit: (event) => print("Mouse Exited translucent"),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.yellow[100],
                        child: Text("Translucent"),
                      ),
                    ),
                  ),
                  _buildMouseRegionVariation(
                    "MouseRegion with HitTestBehavior.opaque",
                    MouseRegion(
                      hitTestBehavior: HitTestBehavior.opaque,
                      onEnter: (event) => print("Mouse Entered opaque hit test"),
                      onExit: (event) => print("Mouse Exited opaque hit test"),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.purple[100],
                        child: Text("Opaque Hit Test"),
                      ),
                    ),
                  ),
                  _buildMouseRegionVariation(
                    "MouseRegion with HitTestBehavior.deferToChild",
                    MouseRegion(
                      hitTestBehavior: HitTestBehavior.deferToChild,
                      onEnter: (event) => print("Mouse Entered deferToChild"),
                      onExit: (event) => print("Mouse Exited deferToChild"),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.orange[100],
                        child: Text("Defer To Child"),
                      ),
                    ),
                  ),
                  _buildMouseRegionVariation(
                    "MouseRegion wrapping a Container",
                    MouseRegion(
                      onEnter: (event) => print("Mouse Entered wrapping"),
                      onExit: (event) => print("Mouse Exited wrapping"),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        color: Colors.teal[100],
                        child: Text("Wrapped Container"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMouseRegionVariation(String label, Widget widget) {
    return Column(
      children: [
        Tooltip(message: label, child: widget),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
