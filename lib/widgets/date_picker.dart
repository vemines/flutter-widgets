import 'package:flutter/material.dart';

class DatePickerScreen extends StatelessWidget {
  const DatePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DatePicker Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DatePicker Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("DatePicker - Default"),
              const SizedBox(height: 8),
              _buildDatePicker(context),
              const SizedBox(height: 20),
              const Text("DatePicker - Custom Colors"),
              const SizedBox(height: 8),
              _buildDatePicker(context, backgroundColor: Colors.blue.shade100, textColor: Colors.black, iconColor: Colors.red),
              const SizedBox(height: 20),
              const Text("DatePicker - Custom Size and Padding"),
              const SizedBox(height: 8),
              _buildDatePicker(context, padding: const EdgeInsets.all(20), iconSize: 30),
              const SizedBox(height: 20),
              const Text("DatePicker - Custom Border Radius"),
              const SizedBox(height: 8),
              _buildDatePicker(context, borderRadius: 15),
              const SizedBox(height: 20),
              const Text("DatePicker - Custom Text Style"),
              const SizedBox(height: 8),
              _buildDatePicker(context, textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("DatePicker - With Initial Date"),
              const SizedBox(height: 8),
              _buildDatePicker(context, initialDate: DateTime.now().add(const Duration(days: 5))),
              const SizedBox(height: 20),
              const Text("DatePicker - With First and Last Date"),
              const SizedBox(height: 8),
              _buildDatePicker(context, firstDate: DateTime.now().subtract(const Duration(days: 30)), lastDate: DateTime.now().add(const Duration(days: 30))),
              const SizedBox(height: 20),
              const Text("DatePicker - With Help Text"),
              const SizedBox(height: 8),
              _buildDatePicker(context, helpText: "Select a date"),
              const SizedBox(height: 20),
              const Text("DatePicker - With Error Text"),
              const SizedBox(height: 8),
              _buildDatePicker(context, errorFormatText: "Invalid Date Format", errorInvalidText: "Invalid Date"),
              const SizedBox(height: 20),
              const Text("DatePicker - With Confirm and Cancel Text"),
              const SizedBox(height: 8),
              _buildDatePicker(context, confirmText: "OK", cancelText: "Cancel"),
              const SizedBox(height: 20),
              const Text("DatePicker - With Field Hint Text"),
              const SizedBox(height: 8),
              _buildDatePicker(context, fieldHintText: "Enter Date"),
              const SizedBox(height: 20),
              const Text("DatePicker - With Field Label Text"),
              const SizedBox(height: 8),
              _buildDatePicker(context, fieldLabelText: "Date"),
              const SizedBox(height: 20),
              const Text("DatePicker - With Field Error Text"),
              const SizedBox(height: 8),
              _buildDatePicker(context, fieldErrorText: "Invalid Date"),
              const SizedBox(height: 20),
              const Text("DatePicker - With Field Style"),
              const SizedBox(height: 8),
              _buildDatePicker(context, fieldStyle: const TextStyle(color: Colors.green, fontSize: 16)),
              const SizedBox(height: 20),
              const Text("DatePicker - With Field Decoration"),
              const SizedBox(height: 8),
              _buildDatePicker(context, fieldDecoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Date")),
              const SizedBox(height: 20),
              const Text("DatePicker - With Editable False"),
              const SizedBox(height: 8),
              _buildDatePicker(context, editable: false),
              const SizedBox(height: 20),
              const Text("DatePicker - With First Date After Last Date (Error)"),
              const SizedBox(height: 8),
              // _buildDatePicker(context, firstDate: DateTime.now().add(const Duration(days: 30)), lastDate: DateTime.now().subtract(const Duration(days: 30))), // This will cause an error, so it's commented out.
              const Text("This variation is commented out because it would cause an error: firstDate cannot be after lastDate."),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDatePicker(BuildContext context, {Color? backgroundColor, Color? textColor, Color? iconColor, EdgeInsets? padding, double? iconSize, double? borderRadius, TextStyle? textStyle, DateTime? initialDate, DateTime? firstDate, DateTime? lastDate, String? helpText, String? errorFormatText, String? errorInvalidText, String? confirmText, String? cancelText, String? fieldHintText, String? fieldLabelText, String? fieldErrorText, TextStyle? fieldStyle, InputDecoration? fieldDecoration, bool? editable}) {
    return SizedBox(
      width: 300,
      child: Builder(
        builder: (context) {
          return InkWell(
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: initialDate ?? DateTime.now(),
                firstDate: firstDate ?? DateTime(1900),
                lastDate: lastDate ?? DateTime(2100),
                helpText: helpText,
                errorFormatText: errorFormatText,
                errorInvalidText: errorInvalidText,
                confirmText: confirmText,
                cancelText: cancelText,
                builder: (BuildContext context, Widget? child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ColorScheme.light(
                        primary: backgroundColor ?? Theme.of(context).colorScheme.primary,
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          foregroundColor: textColor ?? Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    child: child!,
                  );
                },
              );
              if (pickedDate != null) {
                // Handle the picked date
              }
            },
            child: InputDecorator(
              decoration: fieldDecoration ?? InputDecoration(
                hintText: fieldHintText,
                labelText: fieldLabelText,
                errorText: fieldErrorText,
                border: const OutlineInputBorder(),
              ),
              child: Padding(
                padding: padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      initialDate != null ? "${initialDate.day}/${initialDate.month}/${initialDate.year}" : "Select Date",
                      style: fieldStyle ?? textStyle ?? const TextStyle(),
                    ),
                    Icon(Icons.calendar_today, size: iconSize, color: iconColor),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
