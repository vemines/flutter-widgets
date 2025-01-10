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
              Text("DataTable with Custom Border Color and Width",
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
              Text("DataTable with Only Horizontal Border",
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
              Text("DataTable with Only Vertical Border",
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
              Text("DataTable with Custom Border Radius (Not Directly Supported)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message:
                    "DataTable does not directly support border radius. This is a demonstration of how it would look if it did.",
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
              Text("DataTable with Border Side Style",
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
                    DataColumn(
                        label: Text('Name',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87))),
                    DataColumn(
                        label: Text('Age',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87))),
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
                    DataColumn(
                        label: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Name',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                    )),
                    DataColumn(
                        label: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Age',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                    )),
                  ],
                  rows: const [
                    DataRow(cells: [DataCell(Text('Alice')), DataCell(Text('30'))]),
                    DataRow(cells: [DataCell(Text('Bob')), DataCell(Text('25'))]),
                  ],
                ),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              Text("DataTable - With Fixed Column Width",
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
              Text("DataTable - With Custom Text Styles",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              DataTable(
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text('Name',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                  ),
                  DataColumn(
                    label: Text('Age',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
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
