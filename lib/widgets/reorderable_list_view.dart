import 'package:flutter/material.dart';

class ReorderableListViewScreen extends StatelessWidget {
  const ReorderableListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ReorderableListView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ReorderableListView - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildReorderableListViewBasic(),
              SizedBox(height: 20),
              Text("ReorderableListView - Custom Styling",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildReorderableListViewCustom(),
              SizedBox(height: 20),
              Text("ReorderableListView - With Header and Footer",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildReorderableListViewHeaderFooter(),
              SizedBox(height: 20),
              Text("ReorderableListView - With Drag Handle",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildReorderableListViewDragHandle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReorderableListViewBasic() {
    List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        if (oldIndex < newIndex) {
          newIndex -= 1;
        }
        final String item = items.removeAt(oldIndex);
        items.insert(newIndex, item);
      },
      children: items.map((item) => _buildListItem(item, key: ValueKey(item))).toList(),
    );
  }

  Widget _buildReorderableListViewCustom() {
    List<String> items = ['Item A', 'Item B', 'Item C', 'Item D'];
    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        if (oldIndex < newIndex) {
          newIndex -= 1;
        }
        final String item = items.removeAt(oldIndex);
        items.insert(newIndex, item);
      },
      proxyDecorator: (child, index, animation) {
        return Material(
          elevation: 6,
          shadowColor: Colors.grey.withValues(alpha: 255 * 0.5),
          child: child,
        );
      },
      children: items
          .map((item) => _buildListItem(item, key: ValueKey(item), color: Colors.lightBlue[100]))
          .toList(),
    );
  }

  Widget _buildReorderableListViewHeaderFooter() {
    List<String> items = ['Item X', 'Item Y', 'Item Z'];
    return Column(
      children: [
        Text("Header", style: TextStyle(fontWeight: FontWeight.bold)),
        ReorderableListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          onReorder: (oldIndex, newIndex) {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final String item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          },
          children: items.map((item) => _buildListItem(item, key: ValueKey(item))).toList(),
        ),
        Text("Footer", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildReorderableListViewDragHandle() {
    List<String> items = ['Item P', 'Item Q', 'Item R'];
    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        if (oldIndex < newIndex) {
          newIndex -= 1;
        }
        final String item = items.removeAt(oldIndex);
        items.insert(newIndex, item);
      },
      children:
          items.map((item) => _buildListItemWithDragHandle(item, key: ValueKey(item))).toList(),
    );
  }

  Widget _buildListItem(String item, {Key? key, Color? color}) {
    return Container(
      key: key,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(item),
    );
  }

  Widget _buildListItemWithDragHandle(String item, {Key? key}) {
    return Container(
      key: key,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(child: Text(item)),
          ReorderableDragStartListener(
            index: int.parse(item.split(' ').last) - 1,
            child: Icon(Icons.drag_handle),
          ),
        ],
      ),
    );
  }
}
