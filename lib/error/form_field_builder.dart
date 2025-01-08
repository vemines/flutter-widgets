import 'package:flutter/material.dart';

class FormFieldBuilderScreen extends StatelessWidget {
  const FormFieldBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FormFieldBuilder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("FormFieldBuilder Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildFormFieldBuilderVariation(
                    label: "Default FormFieldBuilder",
                    description: "Basic FormFieldBuilder with default styling.",
                    child: FormFieldBuilder<String>(
                      initialValue: 'Initial Value',
                      builder: (FormFieldState<String> field) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Value: ${field.value ?? 'null'}'),
                            TextField(
                              onChanged: field.didChange,
                              decoration: InputDecoration(
                                labelText: 'Enter Text',
                                errorText: field.errorText,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  _buildFormFieldBuilderVariation(
                    label: "FormFieldBuilder with Error",
                    description: "FormFieldBuilder showing an error message.",
                    child: FormFieldBuilder<String>(
                      initialValue: '',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                      builder: (FormFieldState<String> field) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Value: ${field.value ?? 'null'}'),
                            TextField(
                              onChanged: field.didChange,
                              decoration: InputDecoration(
                                labelText: 'Enter Text',
                                errorText: field.errorText,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  _buildFormFieldBuilderVariation(
                    label: "FormFieldBuilder with Custom Decoration",
                    description:
                        "FormFieldBuilder with custom InputDecoration.",
                    child: FormFieldBuilder<String>(
                      initialValue: 'Custom Decoration',
                      builder: (FormFieldState<String> field) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Value: ${field.value ?? 'null'}'),
                            TextField(
                              onChanged: field.didChange,
                              decoration: InputDecoration(
                                labelText: 'Enter Text',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorText: field.errorText,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  _buildFormFieldBuilderVariation(
                    label: "FormFieldBuilder with Initial Value",
                    description:
                        "FormFieldBuilder with a pre-filled initial value.",
                    child: FormFieldBuilder<String>(
                      initialValue: 'Pre-filled Value',
                      builder: (FormFieldState<String> field) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Value: ${field.value ?? 'null'}'),
                            TextField(
                              onChanged: field.didChange,
                              decoration: InputDecoration(
                                labelText: 'Enter Text',
                                errorText: field.errorText,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  _buildFormFieldBuilderVariation(
                    label: "FormFieldBuilder with Different Input Type",
                    description: "FormFieldBuilder using a number input type.",
                    child: FormFieldBuilder<int>(
                      initialValue: 0,
                      builder: (FormFieldState<int> field) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Value: ${field.value ?? 'null'}'),
                            TextField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) =>
                                  field.didChange(int.tryParse(value)),
                              decoration: InputDecoration(
                                labelText: 'Enter Number',
                                errorText: field.errorText,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormFieldBuilderVariation({
    required String label,
    required String description,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(
          message: description,
          child:
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}

class FormFieldBuilder<T> extends StatefulWidget {
  final T? initialValue;
  final FormFieldValidator<T>? validator;
  final FormFieldBuilderCallback<T> builder;

  const FormFieldBuilder({
    super.key,
    this.initialValue,
    this.validator,
    required this.builder,
  });

  @override
  FormFieldBuilderState<T> createState() => FormFieldBuilderState<T>();
}

class FormFieldBuilderState<T> extends State<FormFieldBuilder<T>> {
  T? _value;
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  T? get value => _value;
  String? get errorText => _errorText;

  void didChange(T? newValue) {
    setState(() {
      _value = newValue;
      _validate();
    });
  }

  void _validate() {
    if (widget.validator != null) {
      _errorText = widget.validator!(_value);
    } else {
      _errorText = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(this);
  }
}

typedef FormFieldBuilderCallback<T> = Widget Function(FormFieldState<T> field);
