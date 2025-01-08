import 'package:flutter/material.dart';

class DismissibleScreen extends StatelessWidget {
  const DismissibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Dismissible Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildDismissibleVariation(
                    key: const Key('dismissible_default'),
                    description: "Dismissible - Default",
                    background: Container(color: Colors.green, alignment: Alignment.centerLeft, padding: const EdgeInsets.only(left: 10), child: const Icon(Icons.check, color: Colors.white)),
                    secondaryBackground: Container(color: Colors.red, alignment: Alignment.centerRight, padding: const EdgeInsets.only(right: 10), child: const Icon(Icons.delete, color: Colors.white)),
                    child: const ListTile(title: Text("Swipe me")),
                  ),
                  _buildDismissibleVariation(
                    key: const Key('dismissible_custom_bg'),
                    description: "Dismissible - Custom Background",
                    background: Container(color: Colors.blue, alignment: Alignment.centerLeft, padding: const EdgeInsets.only(left: 10), child: const Text("Archive", style: TextStyle(color: Colors.white))),
                    secondaryBackground: Container(color: Colors.orange, alignment: Alignment.centerRight, padding: const EdgeInsets.only(right: 10), child: const Icon(Icons.archive, color: Colors.white)),
                    child: const ListTile(title: Text("Swipe to Archive")),
                  ),
                  _buildDismissibleVariation(
                    key: const Key('dismissible_no_secondary'),
                    description: "Dismissible - No Secondary Background",
                    background: Container(color: Colors.grey, alignment: Alignment.centerLeft, padding: const EdgeInsets.only(left: 10), child: const Icon(Icons.info, color: Colors.white)),
                    child: const ListTile(title: Text("Swipe for Info")),
                  ),
                  _buildDismissibleVariation(
                    key: const Key('dismissible_confirm_dismiss'),
                    description: "Dismissible - Confirm Dismiss",
                    background: Container(color: Colors.purple, alignment: Alignment.centerLeft, padding: const EdgeInsets.only(left: 10), child: const Icon(Icons.question_mark, color: Colors.white)),
                    secondaryBackground: Container(color: Colors.teal, alignment: Alignment.centerRight, padding: const EdgeInsets.only(right: 10), child: const Icon(Icons.cancel, color: Colors.white)),
                    confirmDismiss: (direction) async {
                      return await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Confirm Dismiss"),
                            content: const Text("Are you sure you want to dismiss this item?"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(true),
                                child: const Text("DISMISS"),
                              ),
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(false),
                                child: const Text("CANCEL"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const ListTile(title: Text("Swipe to Confirm")),
                  ),
                  _buildDismissibleVariation(
                    key: const Key('dismissible_different_directions'),
                    description: "Dismissible - Different Directions",
                    background: Container(color: Colors.brown, alignment: Alignment.centerLeft, padding: const EdgeInsets.only(left: 10), child: const Icon(Icons.arrow_forward, color: Colors.white)),
                    secondaryBackground: Container(color: Colors.cyan, alignment: Alignment.centerRight, padding: const EdgeInsets.only(right: 10), child: const Icon(Icons.arrow_back, color: Colors.white)),
                    direction: DismissDirection.horizontal,
                    child: const ListTile(title: Text("Swipe Horizontally")),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDismissibleVariation({
    required Key key,
    required String description,
    required Widget child,
    Widget? background,
    Widget? secondaryBackground,
    DismissDirection direction = DismissDirection.endToStart,
    Future<bool?> Function(DismissDirection)? confirmDismiss,
  }) {
    return Tooltip(
      message: description,
      child: Dismissible(
        key: key,
        background: background ?? Container(),
        secondaryBackground: secondaryBackground,
        direction: direction,
        confirmDismiss: confirmDismiss,
        child: Card(
          elevation: 2,
          child: child,
        ),
      ),
    );
  }
}
