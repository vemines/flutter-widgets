import 'package:flutter/material.dart';

class DataTableScreen extends StatelessWidget {
  const DataTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTable Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("DataTable - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              DataTable(
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text('Name'),
                  ),
                  DataColumn(
                    label: Text('Age'),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Alice')),
                      DataCell(Text('25')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Bob')),
                      DataCell(Text('30')),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("DataTable - With Borders", style: TextStyle(fontWeight: FontWeight.bold)),
              DataTable(
                border: TableBorder.all(),
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text('Name'),
                  ),
                  DataColumn(
                    label: Text('Age'),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Alice')),
                      DataCell(Text('25')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Bob')),
                      DataCell(Text('30')),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("DataTable - With Heading Row Color", style: TextStyle(fontWeight: FontWeight.bold)),
              DataTable(
                headingRowColor: WidgetStateProperty.all(Colors.grey[300]),
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text('Name'),
                  ),
                  DataColumn(
                    label: Text('Age'),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Alice')),
                      DataCell(Text('25')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Bob')),
                      DataCell(Text('30')),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("DataTable - With Data Row Color", style: TextStyle(fontWeight: FontWeight.bold)),
              DataTable(
                dataRowColor: WidgetStateProperty.all(Colors.blue[50]),
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text('Name'),
                  ),
                  DataColumn(
                    label: Text('Age'),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Alice')),
                      DataCell(Text('25')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Bob')),
                      DataCell(Text('30')),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("DataTable - With Fixed Column Width", style: TextStyle(fontWeight: FontWeight.bold)),
              DataTable(
                columnSpacing: 40,
                columns: const <DataColumn>[
                  DataColumn(
                    label: SizedBox(width: 100, child: Text('Name')),
                  ),
                  DataColumn(
                    label: SizedBox(width: 100, child: Text('Age')),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Alice')),
                      DataCell(Text('25')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Bob')),
                      DataCell(Text('30')),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("DataTable - With Custom Text Styles", style: TextStyle(fontWeight: FontWeight.bold)),
              DataTable(
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text('Name', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                  ),
                  DataColumn(
                    label: Text('Age', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Alice', style: TextStyle(color: Colors.blue))),
                      DataCell(Text('25', style: TextStyle(color: Colors.blue))),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Bob', style: TextStyle(color: Colors.blue))),
                      DataCell(Text('30', style: TextStyle(color: Colors.blue))),
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
