import 'package:flutter/material.dart';

class RenderIndexedSemanticsScreen extends StatelessWidget {
  const RenderIndexedSemanticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderIndexedSemantics Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderIndexedSemantics - Basic Example", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // RenderIndexedSemantics is a render object and doesn't have a direct visual representation.
              // It's used internally by widgets like IndexedStack.
              // We'll demonstrate its effect by wrapping a Container in an IndexedStack.
              const Text("IndexedStack with RenderIndexedSemantics (Indirectly)", style: TextStyle(fontStyle: FontStyle.italic)),
              IndexedStack(
                index: 0,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: const Center(child: Text("Item 1", style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: const Center(child: Text("Item 2", style: TextStyle(color: Colors.white))),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("IndexedStack with different index", style: TextStyle(fontStyle: FontStyle.italic)),
              IndexedStack(
                index: 1,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: const Center(child: Text("Item 1", style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: const Center(child: Text("Item 2", style: TextStyle(color: Colors.white))),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("RenderIndexedSemantics - No Direct Visual", style: TextStyle(fontStyle: FontStyle.italic)),
              const Text("RenderIndexedSemantics is not a widget that can be directly displayed. It's a render object used internally by other widgets like IndexedStack to manage semantics."),
              const SizedBox(height: 20),
              const Text("Note:", style: TextStyle(fontWeight: FontWeight.bold)),
              const Text("The above examples demonstrate the effect of RenderIndexedSemantics indirectly through IndexedStack. RenderIndexedSemantics itself doesn't have a visual representation."),
            ],
          ),
        ),
      ),
    );
  }
}
