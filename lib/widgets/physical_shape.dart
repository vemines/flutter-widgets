import 'package:flutter/material.dart';

class PhysicalShapeScreen extends StatelessWidget {
  const PhysicalShapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PhysicalShape Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("PhysicalShape Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildPhysicalShapeVariation(
                    "Default Shape",
                    PhysicalShape(
                      clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      color: Colors.blue,
                      elevation: 4,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Text("Default", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildPhysicalShapeVariation(
                    "Circle Shape",
                    PhysicalShape(
                      clipper: ShapeBorderClipper(shape: CircleBorder()),
                      color: Colors.green,
                      elevation: 8,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Text("Circle", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildPhysicalShapeVariation(
                    "Custom Border Radius",
                    PhysicalShape(
                      clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                      color: Colors.orange,
                      elevation: 6,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Text("Custom Radius", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildPhysicalShapeVariation(
                    "Different Elevation",
                    PhysicalShape(
                      clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      color: Colors.purple,
                      elevation: 12,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Text("High Elevation", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildPhysicalShapeVariation(
                    "No Elevation",
                    PhysicalShape(
                      clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      color: Colors.red,
                      elevation: 0,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Text("No Elevation", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildPhysicalShapeVariation(
                    "Stadium Border",
                    PhysicalShape(
                      clipper: ShapeBorderClipper(shape: StadiumBorder()),
                      color: Colors.teal,
                      elevation: 4,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Text("Stadium", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildPhysicalShapeVariation(
                    "Beveled Rectangle",
                    PhysicalShape(
                      clipper: ShapeBorderClipper(shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      color: Colors.brown,
                      elevation: 4,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Text("Beveled", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildPhysicalShapeVariation(
                    "PhysicalShape with Container",
                    PhysicalShape(
                      clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      color: Colors.amber,
                      elevation: 4,
                      child: Container(
                        color: Colors.grey[200],
                        padding: EdgeInsets.all(16),
                        child: Text("Container Inside", style: TextStyle(color: Colors.black)),
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

  Widget _buildPhysicalShapeVariation(String name, PhysicalShape shape) {
    return Column(
      children: [
        Tooltip(message: name, child: shape),
        SizedBox(height: 8),
        Text(name, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
class PhysicalShape extends StatelessWidget {
  final Widget child;
  final Color color;
  final double elevation;
  final ShapeBorderClipper clipper;

  const PhysicalShape({super.key, 
    required this.child,
    required this.color,
    required this.elevation,
    required this.clipper,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      color: color,
      clipBehavior: Clip.antiAlias,
      shape: clipper.shape,
      child: child,
    );
  }
}
class ShapeBorderClipper extends CustomClipper<Path> {
  final ShapeBorder shape;

  ShapeBorderClipper({required this.shape});

  @override
  Path getClip(Size size) {
    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    return shape.getOuterPath(rect);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
