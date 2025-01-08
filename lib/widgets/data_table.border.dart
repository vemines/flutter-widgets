import 'package:flutter/material.dart';

class DataTableBorderScreen extends StatelessWidget {
  const DataTableBorderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTableBorder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("DataTable with Default Border", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              DataTable(
                border: TableBorder.all(),
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Age')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Alice')),
                    DataCell(Text('25')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Bob')),
                    DataCell(Text('30')),
                  ]),
                ],
              ),
              SizedBox(height: 20),
              Text("DataTable with Custom Border Color and Width", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              DataTable(
                border: TableBorder.all(color: Colors.red, width: 2.0),
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Age')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Alice')),
                    DataCell(Text('25')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Bob')),
                    DataCell(Text('30')),
                  ]),
                ],
              ),
              SizedBox(height: 20),
              Text("DataTable with Only Horizontal Border", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              DataTable(
                border: TableBorder(horizontalInside: BorderSide(color: Colors.green, width: 1.5)),
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Age')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Alice')),
                    DataCell(Text('25')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Bob')),
                    DataCell(Text('30')),
                  ]),
                ],
              ),
              SizedBox(height: 20),
              Text("DataTable with Only Vertical Border", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              DataTable(
                border: TableBorder(verticalInside: BorderSide(color: Colors.blue, width: 1.5)),
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Age')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Alice')),
                    DataCell(Text('25')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Bob')),
                    DataCell(Text('30')),
                  ]),
                ],
              ),
              SizedBox(height: 20),
              Text("DataTable with Custom Border Radius (Not Directly Supported)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "DataTable does not directly support border radius. This is a demonstration of how it would look if it did.",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: DataTable(
                    border: TableBorder.all(),
                    columns: [
                      DataColumn(label: Text('Name')),
                      DataColumn(label: Text('Age')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('Alice')),
                        DataCell(Text('25')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Bob')),
                        DataCell(Text('30')),
                      ]),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("DataTable with Border Side Style", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              DataTable(
                border: TableBorder.all(
                  color: Colors.purple,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Age')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Alice')),
                    DataCell(Text('25')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Bob')),
                    DataCell(Text('30')),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
