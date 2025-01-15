import 'package:flutter/material.dart';

class InheritedElementScreen extends StatelessWidget {
  const InheritedElementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InheritedElement Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("InheritedElement - Usage (No Child)"),
              // InheritedElement cannot be used directly without a child.
              // It's designed to pass data down the widget tree.
              // The following code would cause an error:
              // const InheritedElement(),
              const SizedBox(height: 20),
              const Text("InheritedElement - With Child (Container)"),
              _buildInheritedElementWithChild(),
              const SizedBox(height: 20),
              const Text("InheritedElement - With Child (Text)"),
              _buildInheritedElementWithTextChild(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInheritedElementWithChild() {
    return InheritedTheme(
      data: ThemeData(primarySwatch: Colors.blue),
      child: Builder(builder: (context) {
        return Container(
          padding: const EdgeInsets.all(10),
          color: Theme.of(context).primaryColor,
          child:
              const Text("Container with Inherited Theme", style: TextStyle(color: Colors.white)),
        );
      }),
    );
  }

  Widget _buildInheritedElementWithTextChild() {
    return InheritedTheme(
      data: ThemeData(
          textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 20, color: Colors.green))),
      child: Builder(builder: (context) {
        return Text("Text with Inherited Theme", style: Theme.of(context).textTheme.bodyMedium);
      }),
    );
  }
}

class InheritedTheme extends InheritedWidget {
  const InheritedTheme({
    super.key,
    required this.data,
    required super.child,
  });

  final ThemeData data;

  static ThemeData of(BuildContext context) {
    final InheritedTheme? result = context.dependOnInheritedWidgetOfExactType<InheritedTheme>();
    assert(result != null, 'No InheritedTheme found in context');
    return result!.data;
  }

  @override
  bool updateShouldNotify(InheritedTheme oldWidget) {
    return data != oldWidget.data;
  }
}
