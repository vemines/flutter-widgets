import 'package:flutter/material.dart';

class RawAutocompleteScreen extends StatelessWidget {
  const RawAutocompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RawAutocomplete Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RawAutocomplete - Basic Usage",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _BasicRawAutocomplete(),
              const SizedBox(height: 20),
              const Text("RawAutocomplete - Custom Styling",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _StyledRawAutocomplete(),
              const SizedBox(height: 20),
              const Text("RawAutocomplete - With Options Builder",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _OptionsBuilderRawAutocomplete(),
              const SizedBox(height: 20),
              const Text("RawAutocomplete - With Custom Text Field",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _CustomTextFieldRawAutocomplete(),
              const SizedBox(height: 20),
              const Text("RawAutocomplete - With Custom Display String",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _CustomDisplayStringRawAutocomplete(),
            ],
          ),
        ),
      ),
    );
  }
}

class _BasicRawAutocomplete extends StatelessWidget {
  const _BasicRawAutocomplete();

  @override
  Widget build(BuildContext context) {
    return RawAutocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return ['apple', 'banana', 'cherry', 'date'].where((String option) {
          return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        print('You selected $selection');
      },
    );
  }
}

class _StyledRawAutocomplete extends StatelessWidget {
  const _StyledRawAutocomplete();

  @override
  Widget build(BuildContext context) {
    return RawAutocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return ['apple', 'banana', 'cherry', 'date'].where((String option) {
          return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        print('You selected $selection');
      },
      textStyle: const TextStyle(color: Colors.blue, fontSize: 16),
      focusNode: FocusNode(),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: 'Search fruits...',
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }
}

class _OptionsBuilderRawAutocomplete extends StatelessWidget {
  const _OptionsBuilderRawAutocomplete();

  @override
  Widget build(BuildContext context) {
    return RawAutocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return Future.delayed(const Duration(milliseconds: 500), () {
          return ['apple', 'banana', 'cherry', 'date'].where((String option) {
            return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
          });
        });
      },
      onSelected: (String selection) {
        print('You selected $selection');
      },
    );
  }
}

class _CustomTextFieldRawAutocomplete extends StatelessWidget {
  const _CustomTextFieldRawAutocomplete();

  @override
  Widget build(BuildContext context) {
    return RawAutocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return ['apple', 'banana', 'cherry', 'date'].where((String option) {
          return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        print('You selected $selection');
      },
      textEditingController: TextEditingController(),
      focusNode: FocusNode(),
      fieldViewBuilder: (BuildContext context, TextEditingController textEditingController,
          FocusNode focusNode, VoidCallback onFieldSubmitted) {
        return TextField(
          controller: textEditingController,
          focusNode: focusNode,
          onSubmitted: (String value) {
            onFieldSubmitted();
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter fruit name',
          ),
        );
      },
    );
  }
}

class _CustomDisplayStringRawAutocomplete extends StatelessWidget {
  const _CustomDisplayStringRawAutocomplete();

  @override
  Widget build(BuildContext context) {
    return RawAutocomplete<Map<String, String>>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<Map<String, String>>.empty();
        }
        return [
          {'name': 'Apple', 'id': '1'},
          {'name': 'Banana', 'id': '2'},
          {'name': 'Cherry', 'id': '3'},
          {'name': 'Date', 'id': '4'},
        ].where((Map<String, String> option) {
          return option['name']!.toLowerCase().contains(textEditingValue.text.toLowerCase());
        });
      },
      displayStringForOption: (Map<String, String> option) => option['name'] ?? '',
      onSelected: (Map<String, String> selection) {
        print('You selected ${selection['name']} with id ${selection['id']}');
      },
    );
  }
}
