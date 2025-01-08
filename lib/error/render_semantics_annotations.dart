import 'package:flutter/material.dart';

class RenderSemanticsAnnotationsScreen extends StatelessWidget {
  const RenderSemanticsAnnotationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderSemanticsAnnotations Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderSemanticsAnnotations - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              RenderSemanticsAnnotations(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: const Text("Default Semantics"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderSemanticsAnnotations - Explicit Label", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              RenderSemanticsAnnotations(
                label: "Custom Label",
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey[300],
                  child: const Text("Custom Label Semantics"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderSemanticsAnnotations - Hidden", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              RenderSemanticsAnnotations(
                excludeSemantics: true,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey[400],
                  child: const Text("Hidden Semantics"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderSemanticsAnnotations - Combined Properties", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              RenderSemanticsAnnotations(
                label: "Combined Label",
                excludeSemantics: false,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey[500],
                  child: const Text("Combined Semantics"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderSemanticsAnnotations - With Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              RenderSemanticsAnnotations(
                child: Container(
                  color: Colors.blue[100],
                  padding: const EdgeInsets.all(20),
                  child: const Text("Container Wrapped"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderSemanticsAnnotations - With Text", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              RenderSemanticsAnnotations(
                child: const Text("Text Wrapped", style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
class RenderSemanticsAnnotations extends SingleChildRenderObjectWidget {
  final String? label;
  final bool excludeSemantics;
  const RenderSemanticsAnnotations({
    super.key,
    this.label,
    this.excludeSemantics = false,
    super.child,
  });

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderSemanticsAnnotationsObject(
      label: label,
      excludeSemantics: excludeSemantics,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderSemanticsAnnotationsObject renderObject) {
    renderObject
      ..label = label
      ..excludeSemantics = excludeSemantics;
  }
}

class RenderSemanticsAnnotationsObject extends RenderProxyBox {
  String? _label;
  bool _excludeSemantics;

  RenderSemanticsAnnotationsObject({
    String? label,
    bool excludeSemantics = false,
  })  : _label = label,
        _excludeSemantics = excludeSemantics;

  String? get label => _label;
  set label(String? value) {
    if (_label == value) return;
    _label = value;
    markNeedsSemanticsUpdate();
  }

  bool get excludeSemantics => _excludeSemantics;
  set excludeSemantics(bool value) {
    if (_excludeSemantics == value) return;
    _excludeSemantics = value;
    markNeedsSemanticsUpdate();
  }

  @override
  void updateSemantics(SemanticsBuilder builder) {
    super.updateSemantics(builder);
    if (excludeSemantics) {
      builder.excludeSemantics();
      return;
    }
    if (label != null) {
      builder.label = label!;
    }
  }
}
