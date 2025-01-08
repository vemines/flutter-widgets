import 'package:flutter/material.dart';

class SearchBarScreen extends StatelessWidget {
  const SearchBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SearchBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SearchBar Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Column(
                    children: [
                      Text("SearchBar - Default"),
                      SearchBar(),
                    ],
                  ),
                  Column(
                    children: [
                      Text("SearchBar - Custom Colors"),
                      SearchBar(
                        backgroundColor: WidgetStateProperty.all(Colors.blue[100]),
                        hintStyle: WidgetStateProperty.all(TextStyle(color: Colors.grey[800])),
                        textStyle: WidgetStateProperty.all(TextStyle(color: Colors.black)),
                        leading: Icon(Icons.search, color: Colors.black),
                        trailing: [Icon(Icons.cancel, color: Colors.black)],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("SearchBar - Custom Size"),
                      SizedBox(
                        width: 300,
                        height: 60,
                        child: SearchBar(
                          hintText: "Search...",
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("SearchBar - Rounded Borders"),
                      SearchBar(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("SearchBar - With Text"),
                      SearchBar(
                        controller: TextEditingController(text: "Initial Text"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("SearchBar - With Padding"),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SearchBar(),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("SearchBar - Wrapped in Container"),
                      Container(
                        color: Colors.grey[200],
                        padding: EdgeInsets.all(10),
                        child: SearchBar(
                          hintText: "Wrapped Search",
                        ),
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

class SearchBar extends StatefulWidget {
  final WidgetStateProperty<Color?>? backgroundColor;
  final WidgetStateProperty<TextStyle?>? hintStyle;
  final WidgetStateProperty<TextStyle?>? textStyle;
  final Widget? leading;
  final List<Widget>? trailing;
  final String? hintText;
  final ShapeBorder? shape;
  final TextEditingController? controller;

  const SearchBar({
    super.key,
    this.backgroundColor,
    this.hintStyle,
    this.textStyle,
    this.leading,
    this.trailing,
    this.hintText,
    this.shape,
    this.controller,
  });

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor?.resolve(WidgetState.values.toSet()) ?? Colors.grey[300],
        borderRadius:
            (widget.shape as RoundedRectangleBorder?)?.borderRadius ?? BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          if (widget.leading != null)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: widget.leading!,
            ),
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: widget.hintText ?? "Search",
                hintStyle: widget.hintStyle?.resolve(WidgetState.values.toSet()) ??
                    TextStyle(color: Colors.grey),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              ),
              style: widget.textStyle?.resolve(WidgetState.values.toSet()) ??
                  TextStyle(color: Colors.black),
            ),
          ),
          if (widget.trailing != null)
            ...widget.trailing!.map((trailing) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: trailing,
                )),
        ],
      ),
    );
  }
}
