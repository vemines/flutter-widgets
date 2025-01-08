import 'package:flutter/material.dart';

class FloatingActionButtonThemeDataScreen extends StatelessWidget {
  const FloatingActionButtonThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButtonThemeData Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FloatingActionButtonThemeData - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  floatingActionButtonTheme: FloatingActionButtonThemeData(),
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(height: 20),
              Text("FloatingActionButtonThemeData - Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    
                  ),
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(height: 20),
              Text("FloatingActionButtonThemeData - Shape and Elevation", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                  ),
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(height: 20),
              Text("FloatingActionButtonThemeData - Large Size", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                    
                    
                    
                  ),
                ),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add, size: 40,),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("FloatingActionButtonThemeData - Disabled Elevation", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                    disabledElevation: 0,
                  ),
                ),
                child: FloatingActionButton(
                  onPressed: null,
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(height: 20),
              Text("FloatingActionButtonThemeData - With Mini Size", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                    
                  ),
                ),
                child: FloatingActionButton.small(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(height: 20),
              Text("FloatingActionButtonThemeData - Extended FAB", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                    
                  ),
                ),
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  label: Text("Add"),
                  icon: Icon(Icons.add),
                ),
              ),
              SizedBox(height: 20),
              Text("FloatingActionButtonThemeData - Extended FAB with Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                ),
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  label: Text("Add"),
                  icon: Icon(Icons.add),
                ),
              ),
              SizedBox(height: 20),
              Text("FloatingActionButtonThemeData - Wrapped in Container", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  floatingActionButtonTheme: FloatingActionButtonThemeData(),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
