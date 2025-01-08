import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KeyboardListenerScreen extends StatelessWidget {
  const KeyboardListenerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KeyboardListener Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("KeyboardListener - Basic Usage:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("This KeyboardListener captures raw key events. The output is printed to the console."),
              Focus(
                child: KeyboardListener(
                  focusNode: FocusNode(),
                  onKeyEvent: (KeyEvent event) {
                    if (event is KeyDownEvent) {
                      print('Key Down: ${event.logicalKey}');
                    } else if (event is KeyUpEvent) {
                      print('Key Up: ${event.logicalKey}');
                    }
                    return KeyEventResult.handled;
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: const Text("Press any key while focused here."),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("KeyboardListener - With FocusNode:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("This KeyboardListener uses a FocusNode to control focus."),
              Focus(
                child: Builder(
                  builder: (BuildContext context) {
                    final FocusNode focusNode = Focus.of(context);
                    return KeyboardListener(
                      focusNode: focusNode,
                      onKeyEvent: (KeyEvent event) {
                        if (event is KeyDownEvent) {
                          print('Key Down (FocusNode): ${event.logicalKey}');
                        } else if (event is KeyUpEvent) {
                          print('Key Up (FocusNode): ${event.logicalKey}');
                        }
                        return KeyEventResult.handled;
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                        child: const Text("Press any key while focused here (FocusNode)."),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("KeyboardListener - With Raw Key Events:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("This KeyboardListener captures raw key events and prints the data."),
              Focus(
                child: KeyboardListener(
                  focusNode: FocusNode(),
                  onKeyEvent: (KeyEvent event) {
                    if (event is RawKeyDownEvent) {
                      print('Raw Key Down: ${event.data}');
                    } else if (event is RawKeyUpEvent) {
                      print('Raw Key Up: ${event.data}');
                    }
                    return KeyEventResult.handled;
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: const Text("Press any key while focused here (Raw Events)."),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("KeyboardListener - With Custom Focus:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("This KeyboardListener uses a custom FocusNode and requests focus."),
              Builder(
                builder: (BuildContext context) {
                  final FocusNode customFocusNode = FocusNode();
                  return GestureDetector(
                    onTap: () {
                      customFocusNode.requestFocus();
                    },
                    child: Focus(
                      focusNode: customFocusNode,
                      child: KeyboardListener(
                        focusNode: customFocusNode,
                        onKeyEvent: (KeyEvent event) {
                          if (event is KeyDownEvent) {
                            print('Key Down (Custom Focus): ${event.logicalKey}');
                          } else if (event is KeyUpEvent) {
                            print('Key Up (Custom Focus): ${event.logicalKey}');
                          }
                          return KeyEventResult.handled;
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                          child: const Text("Tap to focus, then press any key (Custom Focus)."),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
