import 'package:flutter/material.dart';

class DataTableHeadingRowColorScreen extends StatelessWidget {
  const DataTableHeadingRowColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTableHeadingRowColor Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DataTable with Custom Heading Row Color", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              _buildDataTableVariation(
                "Default",
                DataTable(
                  columns: const [
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Age')),
                  ],
                  rows: const [
                    DataRow(cells: [DataCell(Text('Alice')), DataCell(Text('30'))]),
                    DataRow(cells: [DataCell(Text('Bob')), DataCell(Text('25'))]),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              _buildDataTableVariation(
                "Blue Heading Row",
                DataTable(
                  headingRowColor: WidgetStateProperty.all(Colors.blue[100]),
                  columns: const [
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Age')),
                  ],
                  rows: const [
                    DataRow(cells: [DataCell(Text('Alice')), DataCell(Text('30'))]),
                    DataRow(cells: [DataCell(Text('Bob')), DataCell(Text('25'))]),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              _buildDataTableVariation(
                "Green Heading Row",
                DataTable(
                  headingRowColor: WidgetStateProperty.all(Colors.green[100]),
                  columns: const [
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Name')),
                  ],
                  rows: const [
                    DataRow(cells: [DataCell(Text('Alice')), DataCell(Text('30'))]),
                    DataRow(cells: [DataCell(Text('Bob')), DataCell(Text('25'))]),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              _buildDataTableVariation(
                "Red Heading Row with different text style",
                DataTable(
                  headingRowColor: WidgetStateProperty.all(Colors.red[100]),
                  columns: const [
                    DataColumn(label: Text('Name', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87))),
                    DataColumn(label: Text('Age', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87))),
                  ],
                  rows: const [
                    DataRow(cells: [DataCell(Text('Alice')), DataCell(Text('30'))]),
                    DataRow(cells: [DataCell(Text('Bob')), DataCell(Text('25'))]),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              _buildDataTableVariation(
                "Custom Heading Row Color with different text style and padding",
                DataTable(
                  headingRowColor: WidgetStateProperty.all(Colors.orange[100]),
                  columns: const [
                    DataColumn(label: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                    )),
                    DataColumn(label: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Age', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                    )),
                  ],
                  rows: const [
                    DataRow(cells: [DataCell(Text('Alice')), DataCell(Text('30'))]),
                    DataRow(cells: [DataCell(Text('Bob')), DataCell(Text('25'))]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataTableVariation(String name, DataTable dataTable) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        dataTable,
        const SizedBox(height: 10),
      ],
    );
  }
}
