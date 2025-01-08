import 'package:flutter/material.dart';

class AutocompleteScreen extends StatelessWidget {
  const AutocompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Autocomplete Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Autocomplete - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  }
                  return ['apple', 'banana', 'cherry', 'date', 'elderberry'].where((String option) {
                    return option.contains(textEditingValue.text.toLowerCase());
                  });
                },
                onSelected: (String selection) {},
              ),
              SizedBox(height: 20),
              Text("Autocomplete - Custom Styling", style: TextStyle(fontWeight: FontWeight.bold)),
              Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  }
                  return ['apple', 'banana', 'cherry', 'date', 'elderberry'].where((String option) {
                    return option.contains(textEditingValue.text.toLowerCase());
                  });
                },
                onSelected: (String selection) {
                  print('You just selected $selection');
                },
                fieldViewBuilder: (BuildContext context,
                    TextEditingController textEditingController,
                    FocusNode focusNode,
                    VoidCallback onFieldSubmitted) {
                  return TextField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    onSubmitted: (String value) {
                      onFieldSubmitted();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Search...',
                      prefixIcon: Icon(Icons.search),
                    ),
                  );
                },
                optionsViewBuilder: (BuildContext context,
                    AutocompleteOnSelected<String> onSelected, Iterable<String> options) {
                  return Align(
                    alignment: Alignment.topLeft,
                    child: Material(
                      elevation: 4.0,
                      child: SizedBox(
                        height: 200.0,
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: options
                              .map((String option) => ListTile(
                                    title: Text(option),
                                    onTap: () {
                                      onSelected(option);
                                    },
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Text("Autocomplete - No Options", style: TextStyle(fontWeight: FontWeight.bold)),
              Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  return const Iterable<String>.empty();
                },
                onSelected: (String selection) {
                  print('You just selected $selection');
                },
              ),
              SizedBox(height: 20),
              Text("Autocomplete - Initial Value", style: TextStyle(fontWeight: FontWeight.bold)),
              Autocomplete<String>(
                initialValue: TextEditingValue(text: 'ban'),
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  }
                  return ['apple', 'banana', 'cherry', 'date', 'elderberry'].where((String option) {
                    return option.contains(textEditingValue.text.toLowerCase());
                  });
                },
                onSelected: (String selection) {
                  print('You just selected $selection');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
