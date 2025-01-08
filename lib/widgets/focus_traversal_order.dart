import 'package:flutter/material.dart';

class FocusTraversalOrderScreen extends StatelessWidget {
  const FocusTraversalOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FocusTraversalOrder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("FocusTraversalOrder - Default Order", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              FocusTraversalOrder(
                order: const NumericFocusOrder(0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.blue.shade100,
                  child: const Text("First"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("FocusTraversalOrder - Custom Order", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  FocusTraversalOrder(
                    order: const NumericFocusOrder(2),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.green.shade100,
                      child: const Text("Second"),
                    ),
                  ),
                  FocusTraversalOrder(
                    order: const NumericFocusOrder(1),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.red.shade100,
                      child: const Text("Third"),
                    ),
                  ),
                  FocusTraversalOrder(
                    order: const NumericFocusOrder(3),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.yellow.shade100,
                      child: const Text("Fourth"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text("FocusTraversalOrder - With Focusable Widget", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              FocusTraversalOrder(
                order: const NumericFocusOrder(4),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Button"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("FocusTraversalOrder - With Different Order Values", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  FocusTraversalOrder(
                    order: const NumericFocusOrder(10),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.purple.shade100,
                      child: const Text("Order 10"),
                    ),
                  ),
                  FocusTraversalOrder(
                    order: const NumericFocusOrder(-1),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.orange.shade100,
                      child: const Text("Order -1"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text("FocusTraversalOrder - Wrapping a Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              FocusTraversalOrder(
                order: const NumericFocusOrder(5),
                child: Container(
                  color: Colors.grey.shade200,
                  padding: const EdgeInsets.all(20),
                  child: const Text("Wrapped Container"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("FocusTraversalOrder - Without Child (Not Applicable)", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // FocusTraversalOrder without a child is not applicable, as it requires a child to apply the focus order.
              // The following code would cause an error:
              // FocusTraversalOrder(order: const NumericFocusOrder(6)),
              const Text("FocusTraversalOrder requires a child widget to apply the focus order. It cannot be used without a child.", style: TextStyle(fontStyle: FontStyle.italic)),
            ],
          ),
        ),
      ),
    );
  }
}
