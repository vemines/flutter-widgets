import 'package:flutter/material.dart';

class PlatformMenuScreen extends StatelessWidget {
  const PlatformMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlatformMenu Showcase"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Platform Menu Variations",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                _buildMenuVariation(
                  context,
                  "Default Menu",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Color",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    color: Colors.blue[100],
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Icon",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(
                          label: 'Item 1', onSelected: () {}, icon: Icon(Icons.settings)),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Disabled Item",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}, enabled: false),
                    ],
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Submenu",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(
                        label: 'Submenu',
                        menus: [
                          PlatformMenuItem(label: 'Subitem 1', onSelected: () {}),
                          PlatformMenuItem(label: 'Subitem 2', onSelected: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Style",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Padding",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    padding: EdgeInsets.all(10),
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Border Radius",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Border",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    border: Border.all(color: Colors.red, width: 2),
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Elevation",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    elevation: 5,
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Alignment",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    alignment: Alignment.bottomRight,
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Width",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    width: 200,
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Height",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    height: 100,
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Menu Item Height",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    menuItemHeight: 40,
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Menu Item Padding",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    menuItemPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Menu Item Style",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(label: 'Item 1', onSelected: () {}),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    menuItemStyle: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Menu Item Icon Color",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(
                          label: 'Item 1', onSelected: () {}, icon: Icon(Icons.settings)),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    menuItemIconColor: Colors.purple,
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Menu Item Icon Size",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(
                          label: 'Item 1', onSelected: () {}, icon: Icon(Icons.settings)),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    menuItemIconSize: 20,
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Menu Item Icon Padding",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(
                          label: 'Item 1', onSelected: () {}, icon: Icon(Icons.settings)),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    menuItemIconPadding: EdgeInsets.all(5),
                  ),
                ),
                _buildMenuVariation(
                  context,
                  "Menu with Custom Menu Item Icon Alignment",
                  PlatformMenu(
                    menus: [
                      PlatformMenuItem(
                          label: 'Item 1', onSelected: () {}, icon: Icon(Icons.settings)),
                      PlatformMenuItem(label: 'Item 2', onSelected: () {}),
                    ],
                    menuItemIconAlignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuVariation(BuildContext context, String title, PlatformMenu menu) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        menu,
      ],
    );
  }
}

class PlatformMenu extends StatefulWidget {
  final List<PlatformMenuItem> menus;
  final Color? color;
  final TextStyle? style;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Border? border;
  final double? elevation;
  final Alignment? alignment;
  final double? width;
  final double? height;
  final double? menuItemHeight;
  final EdgeInsets? menuItemPadding;
  final TextStyle? menuItemStyle;
  final Color? menuItemIconColor;
  final double? menuItemIconSize;
  final EdgeInsets? menuItemIconPadding;
  final Alignment? menuItemIconAlignment;

  const PlatformMenu({
    super.key,
    required this.menus,
    this.color,
    this.style,
    this.padding,
    this.borderRadius,
    this.border,
    this.elevation,
    this.alignment,
    this.width,
    this.height,
    this.menuItemHeight,
    this.menuItemPadding,
    this.menuItemStyle,
    this.menuItemIconColor,
    this.menuItemIconSize,
    this.menuItemIconPadding,
    this.menuItemIconAlignment,
  });

  @override
  PlatformMenuState createState() => PlatformMenuState();
}

class PlatformMenuState extends State<PlatformMenu> {
  final GlobalKey _menuKey = GlobalKey();
  Offset _menuPosition = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        _showMenu(details.globalPosition);
      },
      child: Container(
        key: _menuKey,
        padding: widget.padding ?? EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: widget.color ?? Colors.grey[200],
          borderRadius: widget.borderRadius ?? BorderRadius.circular(5),
          border: widget.border,
          boxShadow: widget.elevation != null
              ? [
                  BoxShadow(
                      color: Colors.grey.withValues(alpha: 255 * 0.5),
                      spreadRadius: 1,
                      blurRadius: widget.elevation!)
                ]
              : null,
        ),
        alignment: widget.alignment,
        width: widget.width,
        height: widget.height,
        child: Text("Open Menu", style: widget.style),
      ),
    );
  }

  void _showMenu(Offset position) {
    final RenderBox? renderBox = _menuKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    renderBox.localToGlobal(Offset.zero);

    setState(() {
      _menuPosition = position;
    });

    final overlay = Overlay.of(context);

    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: _menuPosition.dx,
        top: _menuPosition.dy,
        child: Material(
          elevation: widget.elevation ?? 3,
          borderRadius: widget.borderRadius ?? BorderRadius.circular(5),
          child: Container(
            decoration: BoxDecoration(
              color: widget.color ?? Colors.white,
              borderRadius: widget.borderRadius ?? BorderRadius.circular(5),
              border: widget.border,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: widget.menus.map((menuItem) => _buildMenuItem(context, menuItem)).toList(),
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(Duration(milliseconds: 100), () {
      if (mounted) {
        setState(() {});
      }
    });

    void closeMenu() {
      if (mounted) {
        setState(() {});
      }
      overlayEntry.remove();
    }

    GestureDetector(
      onTap: closeMenu,
      behavior: HitTestBehavior.translucent,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );

    overlayEntry.addListener(() {
      if (!overlayEntry.mounted) {
        closeMenu();
      }
    });
  }

  Widget _buildMenuItem(BuildContext context, PlatformMenuItem menuItem) {
    return InkWell(
      onTap: menuItem.enabled
          ? () {
              menuItem.onSelected?.call();
              Navigator.pop(context);
            }
          : null,
      child: Container(
        height: widget.menuItemHeight,
        padding: widget.menuItemPadding ?? EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (menuItem.icon != null)
              Padding(
                padding: widget.menuItemIconPadding ?? EdgeInsets.zero,
                child: Align(
                  alignment: widget.menuItemIconAlignment ?? Alignment.centerLeft,
                  child: Icon(menuItem.icon!.icon,
                      color: widget.menuItemIconColor, size: widget.menuItemIconSize),
                ),
              ),
            Text(menuItem.label, style: widget.menuItemStyle),
            if (menuItem.menus != null) Icon(Icons.arrow_right),
          ],
        ),
      ),
    );
  }
}

class PlatformMenuItem {
  final String label;
  final VoidCallback? onSelected;
  final bool enabled;
  final Icon? icon;
  final List<PlatformMenuItem>? menus;

  PlatformMenuItem({
    required this.label,
    this.onSelected,
    this.enabled = true,
    this.icon,
    this.menus,
  });
}
