import 'package:flutter/material.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appRoutes = AppRoutes();
  await appRoutes.init(); // Init route data

  runApp(MyApp(appRoutes: appRoutes));
}

class MyApp extends StatelessWidget {
  final AppRoutes appRoutes;

  const MyApp({super.key, required this.appRoutes});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(appRoutes: appRoutes),
      routes: appRoutes.appRoutes(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final AppRoutes appRoutes;
  const HomeScreen({super.key, required this.appRoutes});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchQuery = '';
  String? _routeSelectOption = 'default';
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  List get _filteredRoutes {
    final searchQueryLower = _searchQuery.toLowerCase();
    if (_routeSelectOption != "group") {
      return widget.appRoutes.normalRoutesData
          .where((route) => route.path.toLowerCase().contains(searchQueryLower))
          .toList();
    }
    return widget.appRoutes.groupRoutesData
        .where((route) => route.path.toLowerCase().contains(searchQueryLower))
        .toList();
  }

  List get _sortedRoutes {
    List routes = List.from(_filteredRoutes);
    switch (_routeSelectOption) {
      case 'a-z':
        routes.sort((a, b) => a.path.compareTo(b.path));
        break;
    }
    return routes;
  }

  void _filterWidgets(String query) {
    setState(() {
      _searchQuery = query;
    });
  }

  void _sortWidgets(String? option) {
    setState(() {
      _routeSelectOption = option;
    });
  }

  List<T> castList<T>(List<dynamic> source) {
    return source.whereType<T>().toList();
  }

  Widget _emptyRowWidget(Widget widget) {
    return _sortedRoutes.isEmpty ? const Center(child: Text('No widget found.')) : widget;
  }

  Widget _widgetByRouteOption() {
    if (_filteredRoutes.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return _routeSelectOption != "group"
        ? _emptyRowWidget(
            _RoutesWidget(sortedRoutes: castList<NormalRouteItem>(_sortedRoutes), widget: widget))
        : _emptyRowWidget(_GroupRoutesWidget(
            sortedRoutes: castList<GroupRouteItem>(_sortedRoutes), widget: widget));
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController indexController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: TextField(
            onChanged: _filterWidgets,
            decoration: const InputDecoration(
              hintText: 'Search Widget...',
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(12.0),
            ),
          ),
        ),
        actions: [
          DropdownButton<String>(
            value: _routeSelectOption,
            icon: const Icon(Icons.sort),
            iconSize: 24,
            elevation: 8,
            padding: const EdgeInsets.all(10),
            style: const TextStyle(color: Colors.black),
            underline: Container(height: 2, color: Colors.grey.shade300),
            onChanged: _sortWidgets,
            items: const <DropdownMenuItem<String>>[
              DropdownMenuItem<String>(
                value: 'default',
                child: Text('Default'),
              ),
              DropdownMenuItem<String>(
                value: 'group',
                child: Text('Group'),
              ),
              DropdownMenuItem<String>(
                value: 'a-z',
                child: Text('A -> Z'),
              ),
            ],
            borderRadius: BorderRadius.circular(8.0),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(height: 1.0, color: Colors.grey),
        ),
      ),
      body: _widgetByRouteOption(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              // Request focus inside the builder
              WidgetsBinding.instance.addPostFrameCallback((_) => _focusNode.requestFocus());
              return AlertDialog(
                title: const Text('Go to Route by Index'),
                content: TextField(
                  focusNode: _focusNode,
                  controller: indexController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(hintText: 'Enter index number'),
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('Go'),
                    onPressed: () {
                      final index = int.tryParse(indexController.text);
                      if (index != null && index >= 1 && index <= _filteredRoutes.length) {
                        Navigator.of(context).pop();
                        final route = _filteredRoutes[index - 1];
                        Navigator.pushNamed(context, route.path);
                      } else {
                        // Show an error message if the index is invalid
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Invalid index')),
                        );
                      }
                    },
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.navigation),
      ),
    );
  }
}

class _RoutesWidget extends StatelessWidget {
  const _RoutesWidget({
    required List<NormalRouteItem> sortedRoutes,
    required this.widget,
  }) : _sortedRoutes = sortedRoutes;

  final List<NormalRouteItem> _sortedRoutes;
  final HomeScreen widget;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _sortedRoutes.length,
      itemBuilder: (context, index) {
        final route = _sortedRoutes[index];
        return ListTile(
          title: Text(route.route.replaceAll("Screen()", '')),
          trailing: Text(
            (index + 1).toString(),
            style: const TextStyle(fontSize: 16),
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              route.path,
            );
          },
        );
      },
    );
  }
}

class _GroupRoutesWidget extends StatelessWidget {
  const _GroupRoutesWidget({
    required List<GroupRouteItem> sortedRoutes,
    required this.widget,
  }) : _sortedRoutes = sortedRoutes;

  final List<GroupRouteItem> _sortedRoutes;
  final HomeScreen widget;

  @override
  Widget build(BuildContext context) {
    final groupedRoutes = <String, List<GroupRouteItem>>{};
    for (final route in _sortedRoutes) {
      groupedRoutes.putIfAbsent(route.group, () => []);
      groupedRoutes[route.group]!.add(route);
    }

    // Filter out empty groups
    final nonEmptyGroups = groupedRoutes.entries.where((entry) => entry.value.isNotEmpty).toList();

    return ListView.builder(
      itemCount: nonEmptyGroups.length,
      itemBuilder: (context, index) {
        final groupName = nonEmptyGroups[index].key;
        final routesInGroup = nonEmptyGroups[index].value;

        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: const BoxDecoration(border: Border(bottom: BorderSide())),
          child: ExpansionTile(
            title: Text(groupName),
            childrenPadding: const EdgeInsets.only(left: 16),
            children: routesInGroup.map((route) {
              return ListTile(
                title: Text(route.route.replaceAll("Screen()", '')),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    route.path,
                  );
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
