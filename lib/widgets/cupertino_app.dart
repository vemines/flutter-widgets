import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAppScreen extends StatelessWidget {
  const CupertinoAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoApp Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoApp - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoApp(
              home: Center(child: Text("CupertinoApp")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("CupertinoApp - With Theme", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoApp(
              theme: CupertinoThemeData(
                primaryColor: CupertinoColors.activeBlue,
              ),
              home: Center(
                  child:
                      Text("Themed CupertinoApp", style: TextStyle(color: CupertinoColors.white))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("CupertinoApp - With Title", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoApp(
              title: "My Cupertino App",
              home: Center(child: Text("CupertinoApp with Title")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("CupertinoApp - With Routes", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoApp(
              routes: {
                '/second': (context) => CupertinoPageScaffold(
                      navigationBar: CupertinoNavigationBar(middle: Text('Second Page')),
                      child: Center(child: Text('Second Page Content')),
                    ),
              },
              home: CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(middle: Text('First Page')),
                child: Center(
                  child: CupertinoButton(
                    child: Text('Go to Second Page'),
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoApp - With OnGenerateRoute",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoApp(
              onGenerateRoute: (settings) {
                if (settings.name == '/third') {
                  return CupertinoPageRoute(
                    builder: (context) => CupertinoPageScaffold(
                      navigationBar: CupertinoNavigationBar(middle: Text('Third Page')),
                      child: Center(child: Text('Third Page Content')),
                    ),
                  );
                }
                return null;
              },
              home: CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(middle: Text('Home Page')),
                child: Center(
                  child: CupertinoButton(
                    child: Text('Go to Third Page'),
                    onPressed: () => Navigator.pushNamed(context, '/third'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoApp - With Initial Route",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoApp(
              initialRoute: '/initial',
              routes: {
                '/initial': (context) => CupertinoPageScaffold(
                      navigationBar: CupertinoNavigationBar(middle: Text('Initial Page')),
                      child: Center(child: Text('Initial Page Content')),
                    ),
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CupertinoApp - With Builder",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            CupertinoApp(
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.2)),
                  child: child!,
                );
              },
              home: Center(child: Text("CupertinoApp with Builder")),
            ),
          ],
        ),
      ),
    );
  }
}
