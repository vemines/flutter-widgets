import 'package:flutter/material.dart';

class DragTargetScreen extends StatelessWidget {
  const DragTargetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DragTarget Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DragTarget Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildDragTargetVariation(
                    label: "DragTarget - Basic",
                    child: DragTarget<int>(
                      builder: (BuildContext context, List<int?> accepted, List<dynamic> rejected) {
                        return Container(
                          height: 100,
                          width: 100,
                          color: Colors.grey[300],
                          child: const Center(child: Text("Drop Here")),
                        );
                      },
                      onAcceptWithDetails: (data) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Accepted: $data")));
                      },
                    ),
                  ),
                  _buildDragTargetVariation(
                    label: "DragTarget - Colored",
                    child: DragTarget<int>(
                      builder: (BuildContext context, List<int?> accepted, List<dynamic> rejected) {
                        return Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue[200],
                          child: const Center(child: Text("Drop Here", style: TextStyle(color: Colors.white))),
                        );
                      },
                      onAcceptWithDetails: (data) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Accepted: $data")));
                      },
                    ),
                  ),
                  _buildDragTargetVariation(
                    label: "DragTarget - Bordered",
                    child: DragTarget<int>(
                      builder: (BuildContext context, List<int?> accepted, List<dynamic> rejected) {
                        return Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(child: Text("Drop Here")),
                        );
                      },
                      onAcceptWithDetails: (data) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Accepted: $data")));
                      },
                    ),
                  ),
                  _buildDragTargetVariation(
                    label: "DragTarget - Larger Size",
                    child: DragTarget<int>(
                      builder: (BuildContext context, List<int?> accepted, List<dynamic> rejected) {
                        return Container(
                          height: 150,
                          width: 150,
                          color: Colors.grey[300],
                          child: const Center(child: Text("Drop Here")),
                        );
                      },
                      onAcceptWithDetails: (data) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Accepted: $data")));
                      },
                    ),
                  ),
                  _buildDragTargetVariation(
                    label: "DragTarget - With Container",
                    child: DragTarget<int>(
                      builder: (BuildContext context, List<int?> accepted, List<dynamic> rejected) {
                        return Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.green)),
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.grey[300],
                            child: const Center(child: Text("Drop Here")),
                          ),
                        );
                      },
                      onAcceptWithDetails: (data) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Accepted: $data")));
                      },
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

  Widget _buildDragTargetVariation({required String label, required Widget child}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: label, child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
