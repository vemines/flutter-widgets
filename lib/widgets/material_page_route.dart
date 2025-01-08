import 'package:flutter/material.dart';

class MaterialPageRouteScreen extends StatelessWidget {
  const MaterialPageRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialPageRoute Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("MaterialPageRoute - Basic Navigation", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                child: Text("Go to Second Screen"),
              ),
              SizedBox(height: 20),
              Text("MaterialPageRoute - With Settings", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'second_screen', arguments: 'Hello from first screen'),
                      builder: (context) => SecondScreen(),
                    ),
                  );
                },
                child: Text("Go to Second Screen with Settings"),
              ),
              SizedBox(height: 20),
              Text("MaterialPageRoute - Custom Transition (Not directly shown)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("Custom transitions are not directly visible in this showcase. They affect the animation when navigating to the second screen. The default transition is used here."),
              SizedBox(height: 20),
              Text("MaterialPageRoute - With MaintainState (Not directly shown)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("The maintainState property affects whether the previous screen's state is preserved. This is not directly visible in this showcase."),
              SizedBox(height: 20),
              Text("MaterialPageRoute - Fullscreen Dialog (Not directly shown)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("Fullscreen dialogs are not directly visible in this showcase. They affect the presentation of the second screen."),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = ModalRoute.of(context)?.settings;
    final arguments = settings?.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the second screen."),
            if (arguments != null)
              Text("Arguments: $arguments"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
