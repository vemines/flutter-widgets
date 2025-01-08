import 'package:flutter/material.dart';

class FormFieldValidatorScreen extends StatelessWidget {
  const FormFieldValidatorScreen({super.key});
  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormFieldValidator Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('FormFieldValidator Variations:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildValidatorVariation(
                    context,
                    'Required Validator',
                    (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    'Checks if the field is not empty.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Email Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[a-zA-Z0-9.!#@$%^&*()_+{}|:"<>?`~=-]+$').hasMatch(value)) {
                        return 'Invalid email format';
                      }
                      return null;
                    },
                    'Validates if the input is a valid email.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Min Length Validator',
                    (value) {
                      if (value == null || value.toString().length < 6) {
                        return 'Minimum 6 characters required';
                      }
                      return null;
                    },
                    'Checks if the input has at least 6 characters.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Max Length Validator',
                    (value) {
                      if (value != null && value.toString().length > 10) {
                        return 'Maximum 10 characters allowed';
                      }
                      return null;
                    },
                    'Checks if the input has at most 10 characters.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Pattern Validator',
                    (value) {
                      if (value != null && !RegExp(r'^[a-zA-Z0-9]+').hasMatch(value)) {
                        return 'Invalid credit card number';
                      }
                      return null;
                    },
                    'Validates if the input is a valid credit card number.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Phone Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[+][(]{0,1}[0-9]{1,4}[)]{0,1}[-\s./0-9]').hasMatch(value) &&
                          !RegExp(r'^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}').hasMatch(value)) {
                        return 'Invalid IPv4 address';
                      }
                      return null;
                    },
                    'Validates if the input is a valid IPv4 address.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'IPv6 Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}').hasMatch(value)) {
                        return 'Invalid time format';
                      }
                      return null;
                    },
                    'Validates if the input is a valid time.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'DateTime Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      try {
                        DateTime.parse(value);
                        return null;
                      } catch (e) {
                        return 'Invalid date and time format';
                      }
                    },
                    'Validates if the input is a valid date and time.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Boolean Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (value.toLowerCase() != 'true' && value.toLowerCase() != 'false') {
                        return 'Must be a boolean';
                      }
                      return null;
                    },
                    'Validates if the input is a boolean.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'List Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      try {
                        var list = value.toString().startsWith('[') &&
                                value.toString().endsWith(']')
                            ? value.toString().substring(1, value.toString().length - 1).split(',')
                            : null;
                        if (list == null) return 'Must be a list';
                        return null;
                      } catch (e) {
                        return 'Must be a list';
                      }
                    },
                    'Validates if the input is a list.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Map Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      try {
                        var map = value.toString().startsWith('{') && value.toString().endsWith('}')
                            ? value.toString().substring(1, value.toString().length - 1).split(',')
                            : null;
                        if (map == null) return 'Must be a map';
                        return null;
                      } catch (e) {
                        return 'Must be a map';
                      }
                    },
                    'Validates if the input is a map.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Set Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      try {
                        var set = value.toString().startsWith('{') && value.toString().endsWith('}')
                            ? value.toString().substring(1, value.toString().length - 1).split(',')
                            : null;
                        if (set == null) return 'Must be a set';
                        return null;
                      } catch (e) {
                        return 'Must be a set';
                      }
                    },
                    'Validates if the input is a set.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Object Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      try {
                        var object = value.toString().startsWith('{') &&
                                value.toString().endsWith('}')
                            ? value.toString().substring(1, value.toString().length - 1).split(',')
                            : null;
                        if (object == null) return 'Must be an object';
                        return null;
                      } catch (e) {
                        return 'Must be an object';
                      }
                    },
                    'Validates if the input is an object.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'File Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!value.toString().contains('.')) {
                        return 'Must be a file';
                      }
                      return null;
                    },
                    'Validates if the input is a file.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Image Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!value.toString().toLowerCase().endsWith('.png') &&
                          !value.toString().toLowerCase().endsWith('.jpg') &&
                          !value.toString().toLowerCase().endsWith('.jpeg') &&
                          !value.toString().toLowerCase().endsWith('.gif') &&
                          !value.toString().toLowerCase().endsWith('.bmp') &&
                          !value.toString().toLowerCase().endsWith('.webp')) {
                        return 'Must be an image';
                      }
                      return null;
                    },
                    'Validates if the input is an image.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Video Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!value.toString().toLowerCase().endsWith('.mp4') &&
                          !value.toString().toLowerCase().endsWith('.mov') &&
                          !value.toString().toLowerCase().endsWith('.avi') &&
                          !value.toString().toLowerCase().endsWith('.mkv') &&
                          !value.toString().toLowerCase().endsWith('.wmv') &&
                          !value.toString().toLowerCase().endsWith('.flv')) {
                        return 'Must be a video';
                      }
                      return null;
                    },
                    'Validates if the input is a video.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Audio Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!value.toString().toLowerCase().endsWith('.mp3') &&
                          !value.toString().toLowerCase().endsWith('.wav') &&
                          !value.toString().toLowerCase().endsWith('.aac') &&
                          !value.toString().toLowerCase().endsWith('.ogg') &&
                          !value.toString().toLowerCase().endsWith('.flac') &&
                          !value.toString().toLowerCase().endsWith('.m4a')) {
                        return 'Must be an audio';
                      }
                      return null;
                    },
                    'Validates if the input is an audio.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Color Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      try {
                        Color(int.parse(value.toString().replaceAll('#', '0x')));
                        return null;
                      } catch (e) {
                        return 'Must be a color';
                      }
                    },
                    'Validates if the input is a color.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Hex Color Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^#([0-9a-fA-F]{3}){1,2}').hasMatch(value)) {
                        return 'Must be an rgb color';
                      }
                      return null;
                    },
                    'Validates if the input is an rgb color.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Rgba Color Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(
                              r'^rgba(\s*(\d{1,3})\s*,\s*(\d{1,3})\s*,\s*(\d{1,3})\s*,\s*(0(.\d+)?|1(.0+)?)\s*)')
                          .hasMatch(value)) {
                        return 'Must be an hsl color';
                      }
                      return null;
                    },
                    'Validates if the input is an hsl color.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Hsv Color Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^hsv(\s*(\d{1,3})\s*,\s*(\d{1,3})%\s*,\s*(\d{1,3})%\s*)')
                          .hasMatch(value)) {
                        return 'Must be a cmyk color';
                      }
                      return null;
                    },
                    'Validates if the input is a cmyk color.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Password Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (value.length < 8) {
                        return 'Invalid password';
                      }
                      return null;
                    },
                    'Validates if the input is a valid password.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Confirm Password Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (value != 'password') {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    'Validates if the input matches the confirmation password.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Username Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[a-zA-Z0-9]+').hasMatch(value)) {
                        return 'Invalid zip code';
                      }
                      return null;
                    },
                    'Validates if the input is a valid zip code.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Postal Code Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d').hasMatch(value)) {
                        return 'Invalid country code';
                      }
                      return null;
                    },
                    'Validates if the input is a valid country code.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Currency Code Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[A-Z]{3}').hasMatch(value)) {
                        return 'Invalid language code';
                      }
                      return null;
                    },
                    'Validates if the input is a valid language code.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Locale Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[a-z]{2}(?:[A-Za-z]{2})?').hasMatch(value)) {
                        return 'Invalid time zone';
                      }
                      return null;
                    },
                    'Validates if the input is a valid time zone.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Mime Type Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[a-z]+/[a-z]+(?:[+-.][a-z]+)?').hasMatch(value)) {
                        return 'Invalid UUID';
                      }
                      return null;
                    },
                    'Validates if the input is a valid UUID.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Mac Address Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})').hasMatch(value)) {
                        return 'Invalid base64 string';
                      }
                      return null;
                    },
                    'Validates if the input is a valid base64 string.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Json Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      try {
                        var json = value.toString().startsWith('{') &&
                                value.toString().endsWith('}')
                            ? value.toString().substring(1, value.toString().length - 1).split(',')
                            : null;
                        if (json == null) return 'Invalid JSON string';
                        return null;
                      } catch (e) {
                        return 'Invalid JSON string';
                      }
                    },
                    'Validates if the input is a valid JSON string.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Xml Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!value.toString().startsWith('<') || !value.toString().endsWith('>')) {
                        return 'Invalid XML string';
                      }
                      return null;
                    },
                    'Validates if the input is a valid XML string.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Html Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!value.toString().startsWith('<') || !value.toString().endsWith('>')) {
                        return 'Invalid HTML string';
                      }
                      return null;
                    },
                    'Validates if the input is a valid HTML string.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Css Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[a-zA-Z0-9\s.#:-_(),;{}!]+').hasMatch(value)) {
                        return 'Invalid JavaScript string';
                      }
                      return null;
                    },
                    'Validates if the input is a valid JavaScript string.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Sql Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[a-zA-Z0-9\s.#:-_(),;{}![]+=><' ']+').hasMatch(value)) {
                        return 'Invalid YAML string';
                      }
                      return null;
                    },
                    'Validates if the input is a valid YAML string.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Markdown Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[a-zA-Z0-9\s.#:-_(),;{}![]+=><' ']+').hasMatch(value)) {
                        return 'Invalid regex';
                      }
                      return null;
                    },
                    'Validates if the input matches the given regex.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Credit Card Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(
                              r'^(?:4[0-9]{12}(?:[0-9]{3})?|[25][1-7][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})')
                          .hasMatch(value)) {
                        return 'Invalid credit card CVV';
                      }
                      return null;
                    },
                    'Validates if the input is a valid credit card CVV.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Credit Card Expiry Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^(0[1-9]|1[0-2])/?([0-9]{2})').hasMatch(value)) {
                        return 'Invalid credit card name';
                      }
                      return null;
                    },
                    'Validates if the input is a valid credit card name.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Credit Card Type Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^(visa|mastercard|amex|discover)').hasMatch(value)) {
                        return 'Invalid credit card issuer';
                      }
                      return null;
                    },
                    'Validates if the input is a valid credit card issuer.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Credit Card Bin Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^\d{6}').hasMatch(value)) {
                        return 'Invalid credit card last 4 digits';
                      }
                      return null;
                    },
                    'Validates if the input is a valid credit card last 4 digits.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Credit Card First6 Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^\d{6}').hasMatch(value)) {
                        return 'Invalid credit card PAN';
                      }
                      return null;
                    },
                    'Validates if the input is a valid credit card PAN.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Credit Card Track1 Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^%[A-Z0-9\s.#:-_(),;{}![]+=><' ']+?').hasMatch(value)) {
                        return 'Invalid credit card track 2 data';
                      }
                      return null;
                    },
                    'Validates if the input is a valid credit card track 2 data.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Credit Card Track3 Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(
                              r'^[A-Z0-9\s.#:-_(),;{}![\]%=<>]+$|^(0[1-9]|1[0-2])/?([0-9]{2})$|^(visa|mastercard|amex|discover)$|^\d{4}$|^%[A-Z0-9\s.#:-_(),;{}![\]%=<>]+$')
                          .hasMatch(value)) {
                        return 'Invalid International Bank Account Number';
                      }
                      return null;
                    },
                    'Validates if the input is a valid International Bank Account Number.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Swift Code Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[A-Z]{6}[A-Z0-9]{2}([A-Z0-9]{3})?').hasMatch(value)) {
                        return 'Invalid Routing Number';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Routing Number.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Branch Code Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^\d{3,5}').hasMatch(value)) {
                        return 'Invalid Account Number';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Account Number.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Bank Code Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[A-Z]{4}').hasMatch(value)) {
                        return 'Invalid Tax ID';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Tax ID.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Social Security Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^\d{3}-\d{2}-\d{4}').hasMatch(value)) {
                        return 'Invalid Driver License';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Driver License.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Passport Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[A-Z0-9\s]+').hasMatch(value)) {
                        return 'Invalid National ID';
                      }
                      return null;
                    },
                    'Validates if the input is a valid National ID.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Vehicle Identification Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[A-Z0-9]{17}').hasMatch(value)) {
                        return 'Invalid License Plate';
                      }
                      return null;
                    },
                    'Validates if the input is a valid License Plate.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Registration Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[A-Z0-9\s]+').hasMatch(value)) {
                        return 'Invalid Serial Number';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Serial Number.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Lot Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[A-Z0-9\s]+').hasMatch(value)) {
                        return 'Invalid Product Code';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Product Code.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Barcode Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^\d{8,18}').hasMatch(value)) {
                        return 'Invalid Qr Code';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Qr Code.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Ean Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^\d{8,13}').hasMatch(value)) {
                        return 'Invalid Upc';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Upc.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Isbn Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(
                              r'^(?:ISBN(?:-13)?:?)(?=[0-9]{13}∣(?=(?:[0−9]+[−])4)[−0−9]17∣(?=(?:[0−9]+[−])4)[−0−9]17)97[89][0-9]{10}')
                          .hasMatch(value)) {
                        return 'Invalid Stock Keeping Unit';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Stock Keeping Unit.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Sku Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[A-Z0-9\s-]+').hasMatch(value)) {
                        return 'Invalid Part Number';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Part Number.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Model Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[A-Z0-9\s-]+').hasMatch(value)) {
                        return 'Invalid Version';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Version.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Build Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[0-9]+').hasMatch(value)) {
                        return 'Invalid Android Package Name';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Android Package Name.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Ios Bundle Id Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[a-z][a-z0-9]*(.[a-z][a-z0-9]*)+').hasMatch(value)) {
                        return 'Invalid Package Name';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Package Name.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Domain Name Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^(a-zA-Z0-9?.)+[a-zA-Z]{2,}').hasMatch(value)) {
                        return 'Invalid Host Name';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Host Name.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Domain Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^(a-zA-Z0-9?.)+[a-zA-Z]{2,}').hasMatch(value)) {
                        return 'Invalid Domain';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Domain.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Ip Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(
                              r'^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]).){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])')
                          .hasMatch(value)) {
                        return 'Invalid Ip';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Ip.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Port Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^\d{1,5}').hasMatch(value)) {
                        return 'Invalid Latitude';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Latitude.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Longitude Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[-+]?(180(.0+)?|((1[0-7]\d)|([1-9]?\d))(.\d+)?)')
                          .hasMatch(value)) {
                        return 'Invalid Location';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Location.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Positive Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (num.tryParse(value.toString()) == null ||
                          num.tryParse(value.toString())! <= 0) {
                        return 'Invalid Positive Number';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Positive Number.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Negative Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (num.tryParse(value.toString()) == null ||
                          num.tryParse(value.toString())! >= 0) {
                        return 'Invalid Negative Number';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Negative Number.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Non Zero Number Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (num.tryParse(value.toString()) == null ||
                          num.tryParse(value.toString()) == 0) {
                        return 'Invalid Non Zero Number';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Non Zero Number.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Zero Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (num.tryParse(value.toString()) == null ||
                          num.tryParse(value.toString()) != 0) {
                        return 'Invalid Zero Number';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Zero Number.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Percentage Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^(100(.0+)?|\d{1,2}(.\d+)?)').hasMatch(value)) {
                        return 'Invalid Binary';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Binary.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Octal Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[0-7]+').hasMatch(value)) {
                        return 'Invalid Hexadecimal';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Hexadecimal.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Base36 Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[a-zA-Z0-9]+').hasMatch(value)) {
                        return 'Invalid Base62';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Base62.',
                  ),
                  _buildValidatorVariation(
                    context,
                    'Base64url Validator',
                    (value) {
                      if (value == null || value.isEmpty) return null;
                      if (!RegExp(r'^[A-Za-z0-9-]+$').hasMatch(value)) {
                        return 'Invalid Base64url';
                      }
                      return null;
                    },
                    'Validates if the input is a valid Base64url.',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildValidatorVariation(
      BuildContext context, String title, String? Function(String?) validator, String description) {
    final formKey = GlobalKey<FormState>();
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Tooltip(
            message: description,
            child: SizedBox(height: 8),
          ),
          Form(
              key: formKey,
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Value',
                    border: OutlineInputBorder(),
                  ),
                  validator: validator,
                ),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Form validated!')),
                      );
                    }
                  },
                  child: Text('Validate'),
                )
              ]))
        ],
      ),
    );
  }
}
