import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Table - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Header 1'))),
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Header 2'))),
                  ]),
                  TableRow(children: [
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Data 1'))),
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Data 2'))),
                  ]),
                ],
              ),
              SizedBox(height: 20),
              Text("Table - With Custom Border", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Table(
                border: TableBorder.all(color: Colors.blue, width: 2),
                children: [
                  TableRow(children: [
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Header 1'))),
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Header 2'))),
                  ]),
                  TableRow(children: [
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Data 1'))),
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Data 2'))),
                  ]),
                ],
              ),
              SizedBox(height: 20),
              Text("Table - With Different Cell Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Table(
                border: TableBorder.all(),
                columnWidths: {
                  0: FixedColumnWidth(100),
                  1: FixedColumnWidth(150),
                },
                children: [
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Header 1', textAlign: TextAlign.center))),
                    TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Header 2', textAlign: TextAlign.end))),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Data 1', textAlign: TextAlign.start))),
                    TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Data 2', textAlign: TextAlign.center))),
                  ]),
                ],
              ),
              SizedBox(height: 20),
              Text("Table - With Custom Background Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      TableCell(
                          child: Padding(padding: EdgeInsets.all(8), child: Text('Header 1'))),
                      TableCell(
                          child: Padding(padding: EdgeInsets.all(8), child: Text('Header 2'))),
                    ],
                  ),
                  TableRow(children: [
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Data 1'))),
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Data 2'))),
                  ]),
                ],
              ),
              SizedBox(height: 20),
              Text("Table - With Spanning Cells", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Header 1',
                            ))),
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Header 2'))),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Data 1',
                            ))),
                    TableCell(child: Padding(padding: EdgeInsets.all(8), child: Text('Data 2'))),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Combined Data',
                          )),
                    ),
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
