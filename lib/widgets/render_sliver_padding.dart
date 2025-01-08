import 'package:flutter/material.dart';

class RenderSliverPaddingScreen extends StatelessWidget {
  const RenderSliverPaddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderSliverPadding Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("RenderSliverPadding Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildVariation(
                  'RenderSliverPadding - Default',
                  const SliverPadding(
                    padding: EdgeInsets.all(10),
                    sliver: SliverToBoxAdapter(child: Text("Default Padding")),
                  ),
                ),
                _buildVariation(
                  'RenderSliverPadding - Large Padding',
                  const SliverPadding(
                    padding: EdgeInsets.all(30),
                    sliver: SliverToBoxAdapter(child: Text("Large Padding")),
                  ),
                ),
                _buildVariation(
                  'RenderSliverPadding - Horizontal Padding',
                  const SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    sliver: SliverToBoxAdapter(child: Text("Horizontal Padding")),
                  ),
                ),
                _buildVariation(
                  'RenderSliverPadding - Vertical Padding',
                  const SliverPadding(
                    padding: EdgeInsets.symmetric(vertical: 50),
                    sliver: SliverToBoxAdapter(child: Text("Vertical Padding")),
                  ),
                ),
                _buildVariation(
                  'RenderSliverPadding - Different Padding',
                  const SliverPadding(
                    padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
                    sliver: SliverToBoxAdapter(child: Text("Different Padding")),
                  ),
                ),
                _buildVariation(
                  'RenderSliverPadding - With Container',
                  SliverPadding(
                    padding: const EdgeInsets.all(10),
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        color: Colors.blue.shade100,
                        padding: const EdgeInsets.all(20),
                        child: const Text("Padding with Container"),
                      ),
                    ),
                  ),
                ),
                // The following variation is commented out because SliverPadding requires a sliver child, not a regular widget.
                // _buildVariation(
                //   'RenderSliverPadding - Invalid Child',
                //   const SliverPadding(
                //     padding: EdgeInsets.all(10),
                //     child: Text("Invalid Child"),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVariation(String name, Widget widget) {
    return Tooltip(
      message: name,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(name, style: const TextStyle(fontSize: 12)),
            const SizedBox(height: 5),
            SizedBox(
              width: 200,
              child: widget,
            ),
          ],
        ),
      ),
    );
  }
}
