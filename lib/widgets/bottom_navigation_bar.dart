import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  BottomNavigationBarScreenState createState() => BottomNavigationBarScreenState();
}

class BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("BottomNavigationBar - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
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
              const SizedBox(height: 20),
              const Text("BottomNavigationBar - Selected Item Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
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
              const SizedBox(height: 20),
              const Text("BottomNavigationBar - Unselected Item Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                unselectedItemColor: Colors.blue,
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
              const SizedBox(height: 20),
              const Text("BottomNavigationBar - Background Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
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
              const SizedBox(height: 20),
              const Text("BottomNavigationBar - Selected Icon Theme",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                selectedIconTheme: const IconThemeData(color: Colors.green, size: 30),
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
              const SizedBox(height: 20),
              const Text("BottomNavigationBar - Unselected Icon Theme",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                unselectedIconTheme: const IconThemeData(color: Colors.red, size: 18),
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
              const SizedBox(height: 20),
              const Text("BottomNavigationBar - Selected Label Style",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
              const SizedBox(height: 20),
              const Text("BottomNavigationBar - Unselected Label Style (color not work)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
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
              const SizedBox(height: 20),
              const Text("BottomNavigationBar - Hide Selected Labels",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
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
              const SizedBox(height: 20),
              const Text("BottomNavigationBar - Hide Unselected Labels",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
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
              const SizedBox(height: 20),
              const Text("BottomNavigationBar - Type Fixed",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
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
              const SizedBox(height: 20),
              const Text("BottomNavigationBar - Type Shifting",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                type: BottomNavigationBarType.shifting,
                selectedItemColor: Colors.amber, // Color when selected
                unselectedItemColor: Colors.grey, // Color when unselected
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                    backgroundColor: Colors
                        .blue, // Background for shifting, also affects the ripple effect color
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business),
                    label: 'Business',
                    backgroundColor: Colors.green,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'School',
                    backgroundColor: Colors.red,
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
