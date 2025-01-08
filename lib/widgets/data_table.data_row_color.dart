import 'package:flutter/material.dart';

class DataTableDataRowColorScreen extends StatelessWidget {
  const DataTableDataRowColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTableDataRowColor Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DataTable with DataRow color variations:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
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
              const SizedBox(height: 16),
              _buildDataTableVariation(
                "Row Color - Light Blue",
                DataTable(
                  columns: const [
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Age')),
                  ],
                  rows: [
                    DataRow(
                      color: const WidgetStatePropertyAll<Color>(Colors.lightBlue),
                      cells: const [DataCell(Text('Alice')), DataCell(Text('30'))],
                    ),
                    const DataRow(cells: [DataCell(Text('Bob')), DataCell(Text('25'))]),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              _buildDataTableVariation(
                "Row Color - Alternating",
                DataTable(
                  columns: const [
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Age')),
                  ],
                  rows: [
                    DataRow(
                      color: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return Colors.grey.withValues(alpha: 255 * 0.3);
                          }
                          return null;
                        },
                      ),
                      cells: const [DataCell(Text('Alice')), DataCell(Text('30'))],
                    ),
                    DataRow(
                      color: const WidgetStatePropertyAll<Color>(Colors.lightGreen),
                      cells: const [DataCell(Text('Bob')), DataCell(Text('25'))],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              _buildDataTableVariation(
                "Row Color - Hover",
                DataTable(
                  columns: const [
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Age')),
                  ],
                  rows: [
                    DataRow(
                      onSelectChanged: (bool? selected) {},
                      color: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.hovered)) {
                            return Colors.yellow.withValues(alpha: 255 * 0.3);
                          }
                          return null;
                        },
                      ),
                      cells: const [DataCell(Text('Alice')), DataCell(Text('30'))],
                    ),
                    const DataRow(cells: [DataCell(Text('Bob')), DataCell(Text('25'))]),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              _buildDataTableVariation(
                "Row Color - Selected",
                DataTable(
                  columns: const [
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Age')),
                  ],
                  rows: [
                    DataRow(
                      selected: true,
                      color: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return Colors.orange.withValues(alpha: 255 * 0.3);
                          }
                          return null;
                        },
                      ),
                      cells: const [DataCell(Text('Alice')), DataCell(Text('30'))],
                    ),
                    const DataRow(cells: [DataCell(Text('Bob')), DataCell(Text('25'))]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataTableVariation(String name, DataTable table) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        table,
        const SizedBox(height: 16),
      ],
    );
  }
}
