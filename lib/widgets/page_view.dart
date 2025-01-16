import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle("PageView - Basic"),
              _buildColorPageView(
                colors: [Colors.red, Colors.green, Colors.blue, Colors.orange, Colors.purple],
              ),
              _buildSectionTitle("PageView - Reverse Direction"),
              _buildColorPageView(
                colors: [
                  Colors.brown,
                  Colors.grey,
                  Colors.indigo,
                  Colors.teal,
                  Colors.pink,
                ],
                reverse: true,
              ),
              _buildSectionTitle("PageView - Vertical Direction"),
              _buildColorPageView(
                colors: [
                  Colors.lime,
                  Colors.cyan,
                  Colors.amber,
                  Colors.deepOrange,
                  Colors.deepPurple,
                ],
                scrollDirection: Axis.vertical,
                textColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(title),
    );
  }
}

class _ColorPageView extends StatefulWidget {
  final List<Color> colors;
  final bool reverse;
  final Axis scrollDirection;
  final Color textColor;

  const _ColorPageView({
    required this.colors,
    this.reverse = false,
    this.scrollDirection = Axis.horizontal,
    this.textColor = Colors.white,
  });

  @override
  _ColorPageViewState createState() => _ColorPageViewState();
}

class _ColorPageViewState extends State<_ColorPageView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _jumpToPage(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView(
            controller: _pageController,
            reverse: widget.reverse,
            scrollDirection: widget.scrollDirection,
            onPageChanged: (value) {
              setState(() {
                _currentPage = value;
              });
            },
            children: widget.colors
                .map((color) => _buildPageContent(color, "Page ${widget.colors.indexOf(color) + 1}",
                    textColor: widget.textColor))
                .toList(),
          ),
        ),
        _buildNavigationButtons(),
      ],
    );
  }

  Widget _buildPageContent(Color color, String text, {Color textColor = Colors.white}) {
    return Container(
      color: color,
      child: Center(
        child: Text(text, style: TextStyle(color: textColor)),
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        ElevatedButton(
          onPressed: _currentPage > 0 ? () => _goToPage(_currentPage - 1) : null,
          child: const Text("Previous"),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed:
              _currentPage < widget.colors.length - 1 ? () => _goToPage(_currentPage + 1) : null,
          child: const Text("Next"),
        ),
        const SizedBox(width: 20),
        ElevatedButton(onPressed: () => _jumpToPage(0), child: const Text("Jump to 1")),
        const SizedBox(width: 20),
        ElevatedButton(
            onPressed: () => _jumpToPage(widget.colors.length - 1),
            child: const Text("Jump to Last")),
        const SizedBox(width: 20),
        ElevatedButton(onPressed: () => _goToPage(0), child: const Text("Animate 1")),
        const SizedBox(width: 20),
        ElevatedButton(
            onPressed: () => _goToPage(widget.colors.length - 1),
            child: const Text("Animate Last")),
      ],
    );
  }
}

Widget _buildColorPageView({
  required List<Color> colors,
  bool reverse = false,
  Axis scrollDirection = Axis.horizontal,
  Color textColor = Colors.white,
}) {
  return _ColorPageView(
    colors: colors,
    reverse: reverse,
    scrollDirection: scrollDirection,
    textColor: textColor,
  );
}
