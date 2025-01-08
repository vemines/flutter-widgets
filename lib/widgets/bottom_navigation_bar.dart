import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("BottomNavigationBar - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("BottomNavigationBar - Selected Item Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                selectedItemColor: Colors.amber[800],
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("BottomNavigationBar - Unselected Item Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                unselectedItemColor: Colors.grey,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("BottomNavigationBar - Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                backgroundColor: Colors.blue[100],
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("BottomNavigationBar - Selected Icon Theme", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                selectedIconTheme: IconThemeData(color: Colors.green, size: 30),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("BottomNavigationBar - Unselected Icon Theme", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                unselectedIconTheme: IconThemeData(color: Colors.red, size: 18),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("BottomNavigationBar - Selected Label Style", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("BottomNavigationBar - Unselected Label Style", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("BottomNavigationBar - Show Selected Labels", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                showSelectedLabels: false,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("BottomNavigationBar - Show Unselected Labels", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                showUnselectedLabels: false,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("BottomNavigationBar - Type Fixed", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("BottomNavigationBar - Type Shifting", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              BottomNavigationBar(
                type: BottomNavigationBarType.shifting,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
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
