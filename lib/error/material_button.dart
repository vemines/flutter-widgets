import 'package:flutter/material.dart';

class MaterialButtonScreen extends StatelessWidget {
  const MaterialButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MaterialButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("MaterialButton Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildMaterialButtonVariation(
                    label: "Default MaterialButton",
                    description: "Basic MaterialButton with default styling.",
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text("Button"),
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - Primary Color",
                    description: "MaterialButton with a primary color background.",
                    child: MaterialButton(
                      onPressed: () {},
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: const Text("Primary Color"),
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - Custom Colors",
                    description: "MaterialButton with custom background and text colors.",
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.green[300],
                      textColor: Colors.black,
                      child: const Text("Custom Colors"),
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - Rounded Corners",
                    description: "MaterialButton with rounded corners.",
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: const Text("Rounded"),
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - Elevated",
                    description: "MaterialButton with elevation.",
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.grey[200],
                      elevation: 8,
                      child: const Text("Elevated"),
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - Padding",
                    description: "MaterialButton with increased padding.",
                    child: MaterialButton(
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: const Text("Padding"),
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - Minimum Size",
                    description: "MaterialButton with minimum size.",
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 150,
                      height: 50,
                      child: const Text("Min Size"),
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - Disabled",
                    description: "Disabled MaterialButton.",
                    child: MaterialButton(
                      onPressed: null,
                      child: const Text("Disabled"),
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - With Icon",
                    description: "MaterialButton with an icon.",
                    child: MaterialButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      label: const Text("Add"),
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - With Icon and Custom Color",
                    description: "MaterialButton with an icon and custom color.",
                    child: MaterialButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite, color: Colors.red),
                      label: const Text("Favorite", style: TextStyle(color: Colors.white)),
                      color: Colors.blue,
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - With Custom Text Style",
                    description: "MaterialButton with custom text style.",
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text("Custom Text", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple)),
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - With Shape Border",
                    description: "MaterialButton with a custom shape border.",
                    child: MaterialButton(
                      onPressed: () {},
                      shape: const StadiumBorder(),
                      child: const Text("Shape Border"),
                    ),
                  ),
                  _buildMaterialButtonVariation(
                    label: "MaterialButton - With Border Side",
                    description: "MaterialButton with a custom border side.",
                    child: MaterialButton(
                      onPressed: () {},
                      shape: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black, width: 2)),
                      child: const Text("Border Side"),
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

  Widget _buildMaterialButtonVariation({required String label, required String description, required Widget child}) {
    return Tooltip(
      message: description,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
