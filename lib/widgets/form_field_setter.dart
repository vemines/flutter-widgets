import 'package:flutter/material.dart';

class FormFieldSetterScreen extends StatelessWidget {
  const FormFieldSetterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FormFieldSetter Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("FormFieldSetter - Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildFormFieldSetterExample(
                initialValue: 'Initial Value',
                onSaved: (value) {},
                builder: (FormFieldState<String> state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        initialValue: state.value,
                        onChanged: (value) => state.didChange(value),
                        decoration: const InputDecoration(labelText: 'Enter Text'),
                      ),
                      if (state.hasError)
                        Text(
                          state.errorText!,
                          style: const TextStyle(color: Colors.red),
                        ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("FormFieldSetter - With Validation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildFormFieldSetterExample(
                initialValue: '',
                onSaved: (value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                builder: (FormFieldState<String> state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        initialValue: state.value,
                        onChanged: (value) => state.didChange(value),
                        decoration: const InputDecoration(labelText: 'Enter Text'),
                        validator: (value) => state.validate().toString(),
                      ),
                      if (state.hasError)
                        Text(
                          state.errorText!,
                          style: const TextStyle(color: Colors.red),
                        ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("FormFieldSetter - With Custom Widget",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildFormFieldSetterExample(
                initialValue: 0,
                onSaved: (value) {},
                builder: (FormFieldState<int> state) {
                  return Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          state.didChange(state.value! - 1);
                        },
                      ),
                      Text('Value: ${state.value}'),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          state.didChange(state.value! + 1);
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormFieldSetterExample<T>({
    required T initialValue,
    required FormFieldSetter<T> onSaved,
    FormFieldValidator<T>? validator,
    required Widget Function(FormFieldState<T> state) builder,
  }) {
    return FormField<T>(
      initialValue: initialValue,
      onSaved: onSaved,
      validator: validator,
      builder: builder,
    );
  }
}
