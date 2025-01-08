import 'package:flutter/material.dart';

class ExtendedFloatingActionButtonScreen extends StatelessWidget {
  const ExtendedFloatingActionButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExtendedFloatingActionButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  // Variation 1: Default
                  Column(
                    children: [
                      const Text("Default"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Default"),
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  // Variation 2: Primary Color
                  Column(
                    children: [
                      const Text("Primary Color"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Primary Color", style: TextStyle(color: Colors.white)),
                        icon: const Icon(Icons.add, color: Colors.white),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  // Variation 3: Secondary Color
                  Column(
                    children: [
                      const Text("Secondary Color"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Secondary Color", style: TextStyle(color: Colors.white)),
                        icon: const Icon(Icons.add, color: Colors.white),
                        backgroundColor: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  ),
                  // Variation 4: Custom Colors
                  Column(
                    children: [
                      const Text("Custom Colors"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Custom Colors", style: TextStyle(color: Colors.black)),
                        icon: const Icon(Icons.add, color: Colors.black),
                        backgroundColor: Colors.yellow,
                      ),
                    ],
                  ),
                  // Variation 5: Custom Size
                  Column(
                    children: [
                      const Text("Custom Size"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Custom Size"),
                        icon: const Icon(Icons.add),
                        extendedPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      ),
                    ],
                  ),
                  // Variation 6: Custom Shape
                  Column(
                    children: [
                      const Text("Custom Shape"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Custom Shape"),
                        icon: const Icon(Icons.add),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                  // Variation 7: Custom Text Style
                  Column(
                    children: [
                      const Text("Custom Text Style"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Custom Text Style",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  // Variation 8: With a different icon
                  Column(
                    children: [
                      const Text("Different Icon"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Different Icon"),
                        icon: const Icon(Icons.star),
                      ),
                    ],
                  ),
                  // Variation 9: With a different label
                  Column(
                    children: [
                      const Text("Different Label"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Save"),
                        icon: const Icon(Icons.save),
                      ),
                    ],
                  ),
                  // Variation 10: Disabled
                  Column(
                    children: [
                      const Text("Disabled"),
                      ExtendedFloatingActionButton(
                        onPressed: null,
                        text: const Text("Disabled"),
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  // Variation 11: With a different elevation
                  Column(
                    children: [
                      const Text("Different Elevation"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Different Elevation"),
                        icon: const Icon(Icons.add),
                        elevation: 10,
                      ),
                    ],
                  ),
                  // Variation 12: With a different focus color
                  Column(
                    children: [
                      const Text("Different Focus Color"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Different Focus Color"),
                        icon: const Icon(Icons.add),
                        focusColor: Colors.green,
                      ),
                    ],
                  ),
                  // Variation 13: With a different hover color
                  Column(
                    children: [
                      const Text("Different Hover Color"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Different Hover Color"),
                        icon: const Icon(Icons.add),
                        hoverColor: Colors.blue,
                      ),
                    ],
                  ),
                  // Variation 14: With a different highlight color
                  Column(
                    children: [
                      const Text("Different Highlight Color"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Different Highlight Color"),
                        icon: const Icon(Icons.add),
                        highlightColor: Colors.red,
                      ),
                    ],
                  ),
                  // Variation 15: With a different splash color
                  Column(
                    children: [
                      const Text("Different Splash Color"),
                      ExtendedFloatingActionButton(
                        onPressed: () {},
                        text: const Text("Different Splash Color"),
                        icon: const Icon(Icons.add),
                        splashColor: Colors.orange,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExtendedFloatingActionButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final Widget text;
  final Widget icon;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? extendedPadding;
  final ShapeBorder? shape;
  final TextStyle? textStyle;
  final double? elevation;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? splashColor;

  const ExtendedFloatingActionButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.backgroundColor,
    this.extendedPadding,
    this.shape,
    this.textStyle,
    this.elevation,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
  });

  @override
  _ExtendedFloatingActionButtonState createState() => _ExtendedFloatingActionButtonState();
}

class _ExtendedFloatingActionButtonState extends State<ExtendedFloatingActionButton> {
  bool _isHovering = false;
  bool _isFocused = false;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: Focus(
        onFocusChange: (hasFocus) => setState(() => _isFocused = hasFocus),
        child: GestureDetector(
          onTapDown: (_) => setState(() => _isPressed = true),
          onTapUp: (_) => setState(() => _isPressed = false),
          onTapCancel: () => setState(() => _isPressed = false),
          onTap: widget.onPressed,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOut,
            padding: widget.extendedPadding ??
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: widget.backgroundColor ?? Theme.of(context).colorScheme.primary,
              shape: widget.shape ?? const StadiumBorder(),
              boxShadow: [
                if (widget.elevation != null)
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 255 * 0.2),
                    blurRadius: widget.elevation!,
                    offset: const Offset(0, 2),
                  ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconTheme(
                  data: IconThemeData(color: widget.textStyle?.color ?? Colors.white),
                  child: widget.icon,
                ),
                const SizedBox(width: 8.0),
                DefaultTextStyle(
                  style: widget.textStyle ?? const TextStyle(color: Colors.white),
                  child: widget.text,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
