import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/widgets/export.dart';

class NormalRouteItem {
  final String path;
  final String route;
  final String fileName;

  NormalRouteItem({
    required this.path,
    required this.route,
    required this.fileName,
  });

  factory NormalRouteItem.fromJson(Map<String, dynamic> json) {
    return NormalRouteItem(
      path: json['path'],
      route: json['route'],
      fileName: json['file_name'],
    );
  }
}

class GroupRouteItem {
  final String path;
  final String route;
  final String group;
  final String fileName;

  GroupRouteItem({
    required this.path,
    required this.route,
    required this.group,
    required this.fileName,
  });

  factory GroupRouteItem.fromJson(Map<String, dynamic> json) {
    return GroupRouteItem(
      path: json['path'],
      route: json['route'],
      group: json['group'],
      fileName: json['file_name'],
    );
  }
}

class AppRoutes {
  List<NormalRouteItem> normalRoutesData = [];
  List<GroupRouteItem> groupRoutesData = [];

  Future<void> init() async {
    final defaultRouteString = await rootBundle.loadString('routes/default-routes.json');
    final defaultRouteJson = json.decode(defaultRouteString) as List<dynamic>;

    final groupRouteString = await rootBundle.loadString('routes/group-routes.json');
    final groupRouteJson = json.decode(groupRouteString) as List<dynamic>;

    normalRoutesData = defaultRouteJson.map((item) => NormalRouteItem.fromJson(item)).toList();
    groupRoutesData = groupRouteJson.map((item) => GroupRouteItem.fromJson(item)).toList();
  }

// Use "Ctrl Shilt L" + "Ctrl L" in vscode for quick remove
  Widget stringToRoute(String widgetString) {
    switch (widgetString) {
      case 'ContainerScreen()':
        return const ContainerScreen();
      case 'RowScreen()':
        return const RowScreen();
      case 'ColumnScreen()':
        return const ColumnScreen();
      case 'TextScreen()':
        return const TextScreen();
      case 'SizedBoxScreen()':
        return const SizedBoxScreen();
      case 'ImageScreen()':
        return const ImageScreen();
      case 'IconScreen()':
        return const IconScreen();
      case 'ListViewScreen()':
        return const ListViewScreen();
      case 'CenterScreen()':
        return const CenterScreen();
      case 'PaddingScreen()':
        return const PaddingScreen();
      case 'ScaffoldScreen()':
        return const ScaffoldScreen();
      case 'AppBarScreen()':
        return const AppBarScreen();
      case 'ElevatedButtonScreen()':
        return const ElevatedButtonScreen();
      case 'TextButtonScreen()':
        return const TextButtonScreen();
      case 'OutlinedButtonScreen()':
        return const OutlinedButtonScreen();
      case 'FloatingActionButtonScreen()':
        return const FloatingActionButtonScreen();
      case 'TextFieldScreen()':
        return const TextFieldScreen();
      case 'CheckboxScreen()':
        return const CheckboxScreen();
      case 'RadioScreen()':
        return const RadioScreen();
      case 'SwitchScreen()':
        return const SwitchScreen();
      case 'SliderScreen()':
        return const SliderScreen();
      case 'CardScreen()':
        return const CardScreen();
      case 'InkWellScreen()':
        return const InkWellScreen();
      case 'GestureDetectorScreen()':
        return const GestureDetectorScreen();
      case 'StackScreen()':
        return const StackScreen();
      case 'AlignScreen()':
        return const AlignScreen();
      case 'PositionedScreen()':
        return const PositionedScreen();
      case 'ExpandedScreen()':
        return const ExpandedScreen();
      case 'FlexibleScreen()':
        return const FlexibleScreen();
      case 'SpacerScreen()':
        return const SpacerScreen();
      case 'OpacityScreen()':
        return const OpacityScreen();
      case 'VisibilityScreen()':
        return const VisibilityScreen();
      case 'TransformScreen()':
        return const TransformScreen();
      case 'ClipRectScreen()':
        return const ClipRectScreen();
      case 'ClipRRectScreen()':
        return const ClipRRectScreen();
      case 'ClipOvalScreen()':
        return const ClipOvalScreen();
      case 'ClipPathScreen()':
        return const ClipPathScreen();
      case 'PageViewScreen()':
        return const PageViewScreen();
      case 'TabBarScreen()':
        return const TabBarScreen();
      case 'TabBarViewScreen()':
        return const TabBarViewScreen();
      case 'BottomNavigationBarScreen()':
        return const BottomNavigationBarScreen();
      case 'DrawerScreen()':
        return const DrawerScreen();
      case 'AlertDialogScreen()':
        return const AlertDialogScreen();
      case 'SimpleDialogScreen()':
        return const SimpleDialogScreen();
      case 'BottomSheetScreen()':
        return const BottomSheetScreen();
      case 'SnackBarScreen()':
        return const SnackBarScreen();
      case 'DividerScreen()':
        return const DividerScreen();
      case 'CircularProgressIndicatorScreen()':
        return const CircularProgressIndicatorScreen();
      case 'LinearProgressIndicatorScreen()':
        return const LinearProgressIndicatorScreen();
      case 'FormScreen()':
        return const FormScreen();
      case 'FormFieldScreen()':
        return const FormFieldScreen();
      case 'BuilderScreen()':
        return const BuilderScreen();
      case 'StatefulBuilderScreen()':
        return const StatefulBuilderScreen();
      case 'ValueListenableBuilderScreen()':
        return const ValueListenableBuilderScreen();
      case 'StreamBuilderScreen()':
        return const StreamBuilderScreen();
      case 'FutureBuilderScreen()':
        return const FutureBuilderScreen();
      case 'AnimatedContainerScreen()':
        return const AnimatedContainerScreen();
      case 'AnimatedOpacityScreen()':
        return const AnimatedOpacityScreen();
      case 'FadeTransitionScreen()':
        return const FadeTransitionScreen();
      case 'SizeTransitionScreen()':
        return const SizeTransitionScreen();
      case 'ScaleTransitionScreen()':
        return const ScaleTransitionScreen();
      case 'SlideTransitionScreen()':
        return const SlideTransitionScreen();
      case 'RotationTransitionScreen()':
        return const RotationTransitionScreen();
      case 'HeroScreen()':
        return const HeroScreen();
      case 'WillPopScopeScreen()':
        return const WillPopScopeScreen();
      case 'SafeAreaScreen()':
        return const SafeAreaScreen();
      case 'SingleChildScrollViewScreen()':
        return const SingleChildScrollViewScreen();
      case 'GridViewScreen()':
        return const GridViewScreen();
      case 'WrapScreen()':
        return const WrapScreen();
      case 'TableScreen()':
        return const TableScreen();
      case 'AspectRatioScreen()':
        return const AspectRatioScreen();
      case 'ConstrainedBoxScreen()':
        return const ConstrainedBoxScreen();
      case 'FittedBoxScreen()':
        return const FittedBoxScreen();
      case 'FractionallySizedBoxScreen()':
        return const FractionallySizedBoxScreen();
      case 'OverflowBoxScreen()':
        return const OverflowBoxScreen();
      case 'SizedOverflowBoxScreen()':
        return const SizedOverflowBoxScreen();
      case 'LimitedBoxScreen()':
        return const LimitedBoxScreen();
      case 'UnconstrainedBoxScreen()':
        return const UnconstrainedBoxScreen();
      case 'CustomScrollViewScreen()':
        return const CustomScrollViewScreen();
      case 'SliverAppBarScreen()':
        return const SliverAppBarScreen();
      case 'SliverListScreen()':
        return const SliverListScreen();
      case 'SliverGridScreen()':
        return const SliverGridScreen();
      case 'SliverPaddingScreen()':
        return const SliverPaddingScreen();
      case 'SliverFillRemainingScreen()':
        return const SliverFillRemainingScreen();
      case 'SliverFillViewportScreen()':
        return const SliverFillViewportScreen();
      case 'SliverFixedExtentListScreen()':
        return const SliverFixedExtentListScreen();
      case 'SliverPrototypeExtentListScreen()':
        return const SliverPrototypeExtentListScreen();
      case 'SliverToBoxAdapterScreen()':
        return const SliverToBoxAdapterScreen();
      case 'AnimatedListScreen()':
        return const AnimatedListScreen();
      case 'AnimatedGridScreen()':
        return const AnimatedGridScreen();
      case 'ReorderableListViewScreen()':
        return const ReorderableListViewScreen();
      case 'ScrollbarScreen()':
        return const ScrollbarScreen();
      case 'RefreshIndicatorScreen()':
        return const RefreshIndicatorScreen();
      case 'IgnorePointerScreen()':
        return const IgnorePointerScreen();
      case 'AbsorbPointerScreen()':
        return const AbsorbPointerScreen();
      case 'ModalBarrierScreen()':
        return const ModalBarrierScreen();
      case 'PageRouteBuilderScreen()':
        return const PageRouteBuilderScreen();
      case 'PageRouteScreen()':
        return const PageRouteScreen();
      case 'MaterialAppScreen()':
        return const MaterialAppScreen();
      case 'CupertinoAppScreen()':
        return const CupertinoAppScreen();
      case 'DirectionalityScreen()':
        return const DirectionalityScreen();
      case 'MediaQueryScreen()':
        return const MediaQueryScreen();
      case 'TextStyleScreen()':
        return const TextStyleScreen();
      case 'TextThemeScreen()':
        return const TextThemeScreen();
      case 'IconThemeScreen()':
        return const IconThemeScreen();
      case 'TooltipScreen()':
        return const TooltipScreen();
      case 'TooltipThemeScreen()':
        return const TooltipThemeScreen();
      case 'MaterialButtonScreen()':
        return const MaterialButtonScreen();
      case 'IconButtonScreen()':
        return const IconButtonScreen();
      case 'BackButtonScreen()':
        return const BackButtonScreen();
      case 'CloseButtonScreen()':
        return const CloseButtonScreen();
      case 'DrawerHeaderScreen()':
        return const DrawerHeaderScreen();
      case 'UserAccountsDrawerHeaderScreen()':
        return const UserAccountsDrawerHeaderScreen();
      case 'ListTileScreen()':
        return const ListTileScreen();
      case 'CheckboxListTileScreen()':
        return const CheckboxListTileScreen();
      case 'RadioListTileScreen()':
        return const RadioListTileScreen();
      case 'SwitchListTileScreen()':
        return const SwitchListTileScreen();
      case 'AboutListTileScreen()':
        return const AboutListTileScreen();
      case 'DataTableScreen()':
        return const DataTableScreen();
      case 'ChipScreen()':
        return const ChipScreen();
      case 'InputChipScreen()':
        return const InputChipScreen();
      case 'ChoiceChipScreen()':
        return const ChoiceChipScreen();
      case 'FilterChipScreen()':
        return const FilterChipScreen();
      case 'ActionChipScreen()':
        return const ActionChipScreen();
      case 'BadgeScreen()':
        return const BadgeScreen();
      case 'BannerScreen()':
        return const BannerScreen();
      case 'PlaceholderScreen()':
        return const PlaceholderScreen();
      case 'FlutterLogoScreen()':
        return const FlutterLogoScreen();
      case 'PlaceholderSpanScreen()':
        return const PlaceholderSpanScreen();
      case 'WidgetSpanScreen()':
        return const WidgetSpanScreen();
      case 'VerticalDividerScreen()':
        return const VerticalDividerScreen();
      case 'SemanticsScreen()':
        return const SemanticsScreen();
      case 'ExcludeSemanticsScreen()':
        return const ExcludeSemanticsScreen();
      case 'MergeSemanticsScreen()':
        return const MergeSemanticsScreen();
      case 'IndexedSemanticsScreen()':
        return const IndexedSemanticsScreen();
      case 'RepaintBoundaryScreen()':
        return const RepaintBoundaryScreen();
      case 'CustomPaintScreen()':
        return const CustomPaintScreen();
      case 'ShaderMaskScreen()':
        return const ShaderMaskScreen();
      case 'BackdropFilterScreen()':
        return const BackdropFilterScreen();
      case 'ColorFilteredScreen()':
        return const ColorFilteredScreen();
      case 'DecoratedBoxScreen()':
        return const DecoratedBoxScreen();
      case 'RotatedBoxScreen()':
        return const RotatedBoxScreen();
      case 'FractionalTranslationScreen()':
        return const FractionalTranslationScreen();
      case 'PhysicalModelScreen()':
        return const PhysicalModelScreen();
      case 'PhysicalShapeScreen()':
        return const PhysicalShapeScreen();
      case 'AnnotatedRegionScreen()':
        return const AnnotatedRegionScreen();
      case 'OverlayScreen()':
        return const OverlayScreen();
      case 'OverlayEntryScreen()':
        return const OverlayEntryScreen();
      case 'NavigationRailScreen()':
        return const NavigationRailScreen();
      case 'NavigationBarScreen()':
        return const NavigationBarScreen();
      case 'NavigationDrawerScreen()':
        return const NavigationDrawerScreen();
      case 'SegmentedButtonScreen()':
        return const SegmentedButtonScreen();
      case 'SelectableTextScreen()':
        return const SelectableTextScreen();
      case 'RichTextScreen()':
        return const RichTextScreen();
      case 'ShortcutsScreen()':
        return const ShortcutsScreen();
      case 'FocusTraversalGroupScreen()':
        return const FocusTraversalGroupScreen();
      case 'FocusTraversalOrderScreen()':
        return const FocusTraversalOrderScreen();
      case 'KeyboardListenerScreen()':
        return const KeyboardListenerScreen();
      case 'ListenerScreen()':
        return const ListenerScreen();
      case 'MouseRegionScreen()':
        return const MouseRegionScreen();
      case 'DraggableScreen()':
        return const DraggableScreen();
      case 'DragTargetScreen()':
        return const DragTargetScreen();
      case 'LongPressDraggableScreen()':
        return const LongPressDraggableScreen();
      case 'InteractiveViewerScreen()':
        return const InteractiveViewerScreen();
      case 'ScrollConfigurationScreen()':
        return const ScrollConfigurationScreen();
      case 'AnimatedCrossFadeScreen()':
        return const AnimatedCrossFadeScreen();
      case 'AnimatedSwitcherScreen()':
        return const AnimatedSwitcherScreen();
      case 'AnimatedAlignScreen()':
        return const AnimatedAlignScreen();
      case 'AnimatedPositionedScreen()':
        return const AnimatedPositionedScreen();
      case 'AnimatedSizeScreen()':
        return const AnimatedSizeScreen();
      case 'AnimatedPaddingScreen()':
        return const AnimatedPaddingScreen();
      case 'AnimatedIconScreen()':
        return const AnimatedIconScreen();
      case 'AnimatedPhysicalModelScreen()':
        return const AnimatedPhysicalModelScreen();
      case 'AnimatedDefaultTextStyleScreen()':
        return const AnimatedDefaultTextStyleScreen();
      case 'DefaultTextStyleTransitionScreen()':
        return const DefaultTextStyleTransitionScreen();
      case 'DecoratedBoxTransitionScreen()':
        return const DecoratedBoxTransitionScreen();
      case 'CircleAvatarScreen()':
        return const CircleAvatarScreen();
      case 'CupertinoButtonScreen()':
        return const CupertinoButtonScreen();
      case 'CupertinoCheckBoxScreen()':
        return const CupertinoCheckBoxScreen();
      case 'CupertinoAlertDialogScreen()':
        return const CupertinoAlertDialogScreen();
      case 'AnimatedBuilderScreen()':
        return const AnimatedBuilderScreen();
      case 'AnimatedRotationScreen()':
        return const AnimatedRotationScreen();
      case 'AnimatedWidgetScreen()':
        return const AnimatedWidgetScreen();
      case 'AssetBundleScreen()':
        return const AssetBundleScreen();
      case 'AutomaticKeepAliveClientMixinScreen()':
        return const AutomaticKeepAliveClientMixinScreen();
      case 'BouncingScrollPhysicsScreen()':
        return const BouncingScrollPhysicsScreen();
      case 'ClampingScrollPhysicsScreen()':
        return const ClampingScrollPhysicsScreen();
      case 'ColoredBoxScreen()':
        return const ColoredBoxScreen();
      case 'CupertinoDynamicColorScreen()':
        return const CupertinoDynamicColorScreen();
      case 'CupertinoModalPopupRouteScreen()':
        return const CupertinoModalPopupRouteScreen();
      case 'CupertinoSliverNavigationBarScreen()':
        return const CupertinoSliverNavigationBarScreen();
      case 'CupertinoSliverRefreshControlScreen()':
        return const CupertinoSliverRefreshControlScreen();
      case 'DividerThemeScreen()':
        return const DividerThemeScreen();
      case 'FlutterErrorDetailsScreen()':
        return const FlutterErrorDetailsScreen();
      case 'ImageIconScreen()':
        return const ImageIconScreen();
      case 'ImageNetworkScreen()':
        return const ImageNetworkScreen();
      case 'IndexedStackScreen()':
        return const IndexedStackScreen();
      case 'NavigationDrawerDestinationScreen()':
        return const NavigationDrawerDestinationScreen();
      case 'NavigatorScreen()':
        return const NavigatorScreen();
      case 'AnimatedListStateScreen()':
        return const AnimatedListStateScreen();
      case 'AnimatedModalBarrierScreen()':
        return const AnimatedModalBarrierScreen();
      case 'AlwaysScrollableScrollPhysicsScreen()':
        return const AlwaysScrollableScrollPhysicsScreen();
      case 'MaterialPageRouteScreen()':
        return const MaterialPageRouteScreen();
      case 'CupertinoPageRouteScreen()':
        return const CupertinoPageRouteScreen();
      case 'ModalRouteScreen()':
        return const ModalRouteScreen();
      case 'CupertinoDialogRouteScreen()':
        return const CupertinoDialogRouteScreen();
      case 'ShowAboutDialogScreen()':
        return const ShowAboutDialogScreen();
      case 'ShowDatePickerScreen()':
        return const ShowDatePickerScreen();
      case 'ShowTimePickerScreen()':
        return const ShowTimePickerScreen();
      case 'ShowLicensePageScreen()':
        return const ShowLicensePageScreen();
      case 'ShowModalBottomSheetScreen()':
        return const ShowModalBottomSheetScreen();
      case 'ShowSearchScreen()':
        return const ShowSearchScreen();
      case 'BottomAppBarScreen()':
        return const BottomAppBarScreen();
      case 'ButtonBarScreen()':
        return const ButtonBarScreen();
      case 'ExpandIconScreen()':
        return const ExpandIconScreen();
      case 'ExpansionPanelScreen()':
        return const ExpansionPanelScreen();
      case 'ExpansionPanelListScreen()':
        return const ExpansionPanelListScreen();
      case 'GridTileScreen()':
        return const GridTileScreen();
      case 'GridTileBarScreen()':
        return const GridTileBarScreen();
      case 'TabPageSelectorScreen()':
        return const TabPageSelectorScreen();
      case 'UnderlineTabIndicatorScreen()':
        return const UnderlineTabIndicatorScreen();
      case 'LicensePageScreen()':
        return const LicensePageScreen();
      case 'SearchBarScreen()':
        return const SearchBarScreen();
      case 'RangeSliderScreen()':
        return const RangeSliderScreen();
      case 'SliderThemeScreen()':
        return const SliderThemeScreen();
      case 'RangeSliderTrackShapeScreen()':
        return const RangeSliderTrackShapeScreen();
      case 'TabBarThemeScreen()':
        return const TabBarThemeScreen();
      case 'DrawerThemeScreen()':
        return const DrawerThemeScreen();
      case 'CheckboxThemeDataScreen()':
        return const CheckboxThemeDataScreen();
      case 'RadioThemeDataScreen()':
        return const RadioThemeDataScreen();
      case 'TextButtonThemeDataScreen()':
        return const TextButtonThemeDataScreen();
      case 'ElevatedButtonThemeDataScreen()':
        return const ElevatedButtonThemeDataScreen();
      case 'OutlinedButtonThemeDataScreen()':
        return const OutlinedButtonThemeDataScreen();
      case 'FloatingActionButtonThemeDataScreen()':
        return const FloatingActionButtonThemeDataScreen();
      case 'ProgressIndicatorThemeDataScreen()':
        return const ProgressIndicatorThemeDataScreen();
      case 'PopupMenuThemeDataScreen()':
        return const PopupMenuThemeDataScreen();
      case 'MaterialBannerThemeDataScreen()':
        return const MaterialBannerThemeDataScreen();
      case 'NavigationBarThemeScreen()':
        return const NavigationBarThemeScreen();
      case 'ScrollbarThemeDataScreen()':
        return const ScrollbarThemeDataScreen();
      case 'TextFormFieldScreen()':
        return const TextFormFieldScreen();
      case 'CupertinoTextFieldScreen()':
        return const CupertinoTextFieldScreen();
      case 'CupertinoTextFormFieldRowScreen()':
        return const CupertinoTextFormFieldRowScreen();
      case 'CupertinoSearchTextFieldScreen()':
        return const CupertinoSearchTextFieldScreen();
      case 'RawAutocompleteScreen()':
        return const RawAutocompleteScreen();
      case 'AutocompleteScreen()':
        return const AutocompleteScreen();
      case 'CupertinoContextMenuScreen()':
        return const CupertinoContextMenuScreen();
      case 'CupertinoContextMenuActionScreen()':
        return const CupertinoContextMenuActionScreen();
      case 'CupertinoActionSheetScreen()':
        return const CupertinoActionSheetScreen();
      case 'CupertinoActionSheetActionScreen()':
        return const CupertinoActionSheetActionScreen();
      case 'CupertinoNavigationBarScreen()':
        return const CupertinoNavigationBarScreen();
      case 'CupertinoNavigationBarBackButtonScreen()':
        return const CupertinoNavigationBarBackButtonScreen();
      case 'CupertinoTabBarScreen()':
        return const CupertinoTabBarScreen();
      case 'CupertinoTabScaffoldScreen()':
        return const CupertinoTabScaffoldScreen();
      case 'CupertinoTabViewScreen()':
        return const CupertinoTabViewScreen();
      case 'CupertinoPageScaffoldScreen()':
        return const CupertinoPageScaffoldScreen();
      case 'CupertinoPageScreen()':
        return const CupertinoPageScreen();
      case 'CupertinoScrollbarScreen()':
        return const CupertinoScrollbarScreen();
      case 'CupertinoPickerScreen()':
        return const CupertinoPickerScreen();
      case 'CupertinoDatePickerScreen()':
        return const CupertinoDatePickerScreen();
      case 'CupertinoTimerPickerScreen()':
        return const CupertinoTimerPickerScreen();
      case 'CupertinoSliderScreen()':
        return const CupertinoSliderScreen();
      case 'CupertinoSwitchScreen()':
        return const CupertinoSwitchScreen();
      case 'CupertinoRadioScreen()':
        return const CupertinoRadioScreen();
      case 'CupertinoSegmentedControlScreen()':
        return const CupertinoSegmentedControlScreen();
      case 'CupertinoSlidingSegmentedControlScreen()':
        return const CupertinoSlidingSegmentedControlScreen();
      case 'CupertinoActivityIndicatorScreen()':
        return const CupertinoActivityIndicatorScreen();
      case 'CupertinoColorsScreen()':
        return const CupertinoColorsScreen();
      case 'CupertinoThemeScreen()':
        return const CupertinoThemeScreen();
      case 'CupertinoThemeDataScreen()':
        return const CupertinoThemeDataScreen();
      case 'CupertinoTextThemeDataScreen()':
        return const CupertinoTextThemeDataScreen();
      case 'CupertinoDialogActionScreen()':
        return const CupertinoDialogActionScreen();
      case 'CupertinoListSectionScreen()':
        return const CupertinoListSectionScreen();
      case 'CupertinoListTileScreen()':
        return const CupertinoListTileScreen();
      case 'CupertinoFormSectionScreen()':
        return const CupertinoFormSectionScreen();
      case 'CupertinoFormRowScreen()':
        return const CupertinoFormRowScreen();
      case 'CupertinoPopupSurfaceScreen()':
        return const CupertinoPopupSurfaceScreen();
      case 'CupertinoPageTransitionScreen()':
        return const CupertinoPageTransitionScreen();
      case 'CupertinoPickerDefaultSelectionOverlayScreen()':
        return const CupertinoPickerDefaultSelectionOverlayScreen();
      case 'CupertinoScrollBehaviorScreen()':
        return const CupertinoScrollBehaviorScreen();
      case 'CupertinoSpellCheckSuggestionsToolbarScreen()':
        return const CupertinoSpellCheckSuggestionsToolbarScreen();
      case 'CupertinoTextSelectionToolbarScreen()':
        return const CupertinoTextSelectionToolbarScreen();
      case 'CupertinoTextSelectionToolbarButtonScreen()':
        return const CupertinoTextSelectionToolbarButtonScreen();
      case 'CupertinoDesktopTextSelectionToolbarScreen()':
        return const CupertinoDesktopTextSelectionToolbarScreen();
      case 'CupertinoDesktopTextSelectionToolbarButtonScreen()':
        return const CupertinoDesktopTextSelectionToolbarButtonScreen();
      case 'CupertinoAdaptiveTextSelectionToolbarScreen()':
        return const CupertinoAdaptiveTextSelectionToolbarScreen();
      case 'CupertinoTabControllerScreen()':
        return const CupertinoTabControllerScreen();
      case 'WidgetsBindingScreen()':
        return const WidgetsBindingScreen();
      case 'GestureBindingScreen()':
        return const GestureBindingScreen();
      case 'ServicesBindingScreen()':
        return const ServicesBindingScreen();
      case 'SchedulerBindingScreen()':
        return const SchedulerBindingScreen();
      case 'SemanticsBindingScreen()':
        return const SemanticsBindingScreen();
      case 'LocalizationsScreen()':
        return const LocalizationsScreen();
      case 'LocalizationsDelegateScreen()':
        return const LocalizationsDelegateScreen();
      case 'DefaultMaterialLocalizationsScreen()':
        return const DefaultMaterialLocalizationsScreen();
      case 'DefaultWidgetsLocalizationsScreen()':
        return const DefaultWidgetsLocalizationsScreen();
      case 'LocaleResolutionCallbackScreen()':
        return const LocaleResolutionCallbackScreen();
      case 'LocaleListResolutionCallbackScreen()':
        return const LocaleListResolutionCallbackScreen();
      case 'NavigationToolbarScreen()':
        return const NavigationToolbarScreen();
      case 'AboutDialogScreen()':
        return const AboutDialogScreen();
      case 'BaselineScreen()':
        return const BaselineScreen();
      case 'BlendModeScreen()':
        return const BlendModeScreen();
      case 'ButtonStyleScreen()':
        return const ButtonStyleScreen();
      case 'CardThemeScreen()':
        return const CardThemeScreen();
      case 'CarouselViewScreen()':
        return const CarouselViewScreen();
      case 'ChipThemeDataScreen()':
        return const ChipThemeDataScreen();
      case 'ColorSchemeScreen()':
        return const ColorSchemeScreen();
      case 'ComponentElementScreen()':
        return const ComponentElementScreen();
      case 'CupertinoDesktopTextSelectionControlsScreen()':
        return const CupertinoDesktopTextSelectionControlsScreen();
      case 'CupertinoLocalizationsScreen()':
        return const CupertinoLocalizationsScreen();
      case 'CustomSingleChildLayoutScreen()':
        return const CustomSingleChildLayoutScreen();
      case 'DatePickerScreen()':
        return const DatePickerScreen();
      case 'DatePickerThemeScreen()':
        return const DatePickerThemeScreen();
      case 'DefaultAssetBundleScreen()':
        return const DefaultAssetBundleScreen();
      case 'DefaultTextStyleScreen()':
        return const DefaultTextStyleScreen();
      case 'DismissibleScreen()':
        return const DismissibleScreen();
      case 'DraggableScrollableSheetScreen()':
        return const DraggableScrollableSheetScreen();
      case 'DropdownButtonScreen()':
        return const DropdownButtonScreen();
      case 'ErrorWidgetScreen()':
        return const ErrorWidgetScreen();
      case 'ExtendedFloatingActionButtonScreen()':
        return const ExtendedFloatingActionButtonScreen();
      case 'FadeInImageScreen()':
        return const FadeInImageScreen();
      case 'FilledButtonScreen()':
        return const FilledButtonScreen();
      case 'FlowScreen()':
        return const FlowScreen();
      case 'FocusScreen()':
        return const FocusScreen();
      case 'FormFieldBuilderScreen()':
        return const FormFieldBuilderScreen();
      case 'FormFieldSetterScreen()':
        return const FormFieldSetterScreen();
      case 'FormFieldValidatorScreen()':
        return const FormFieldValidatorScreen();
      case 'GridPaperScreen()':
        return const GridPaperScreen();
      case 'ImplicitlyAnimatedWidgetScreen()':
        return const ImplicitlyAnimatedWidgetScreen();
      case 'InheritedElementScreen()':
        return const InheritedElementScreen();
      case 'InheritedWidgetScreen()':
        return const InheritedWidgetScreen();
      case 'InputDecoratorScreen()':
        return const InputDecoratorScreen();
      case 'IntrinsicHeightScreen()':
        return const IntrinsicHeightScreen();
      case 'IntrinsicWidthScreen()':
        return const IntrinsicWidthScreen();
      case 'KeyedSubtreeScreen()':
        return const KeyedSubtreeScreen();
      case 'LayoutBuilderScreen()':
        return const LayoutBuilderScreen();
      case 'LayoutIdScreen()':
        return const LayoutIdScreen();
      case 'LeafRenderObjectWidgetScreen()':
        return const LeafRenderObjectWidgetScreen();
      case 'ListBodyScreen()':
        return const ListBodyScreen();
      case 'ListWheelScrollViewScreen()':
        return const ListWheelScrollViewScreen();
      case 'MaterialBannerScreen()':
        return const MaterialBannerScreen();
      case 'MenuScreen()':
        return const MenuScreen();
      case 'MouseCursorScreen()':
        return const MouseCursorScreen();
      case 'MultiChildRenderObjectElementScreen()':
        return const MultiChildRenderObjectElementScreen();
      case 'NestedScrollViewScreen()':
        return const NestedScrollViewScreen();
      case 'NeverScrollableScrollPhysicsScreen()':
        return const NeverScrollableScrollPhysicsScreen();
      case 'NotificationListenerScreen()':
        return const NotificationListenerScreen();
      case 'OffstageScreen()':
        return const OffstageScreen();
      case 'OverflowBarScreen()':
        return const OverflowBarScreen();
      case 'PageScrollPhysicsScreen()':
        return const PageScrollPhysicsScreen();
      case 'PlatformMenuScreen()':
        return const PlatformMenuScreen();
      case 'PopupMenuButtonScreen()':
        return const PopupMenuButtonScreen();
      case 'PositionedTransitionScreen()':
        return const PositionedTransitionScreen();
      case 'PreferredSizeScreen()':
        return const PreferredSizeScreen();
      case 'RawChipScreen()':
        return const RawChipScreen();
      case 'RawImageScreen()':
        return const RawImageScreen();
      case 'RawMaterialButtonScreen()':
        return const RawMaterialButtonScreen();
      case 'RenderAbsorbPointerScreen()':
        return const RenderAbsorbPointerScreen();
      case 'RenderAndroidViewScreen()':
        return const RenderAndroidViewScreen();
      case 'RenderAnnotatedRegionScreen()':
        return const RenderAnnotatedRegionScreen();
      case 'RenderBackdropFilterScreen()':
        return const RenderBackdropFilterScreen();
      case 'RenderBoxScreen()':
        return const RenderBoxScreen();
      case 'RenderClipOvalScreen()':
        return const RenderClipOvalScreen();
      case 'RenderClipPathScreen()':
        return const RenderClipPathScreen();
      case 'RenderClipRectScreen()':
        return const RenderClipRectScreen();
      case 'RenderClipRRectScreen()':
        return const RenderClipRRectScreen();
      case 'RenderColorFilteredScreen()':
        return const RenderColorFilteredScreen();
      case 'RenderConstrainedBoxScreen()':
        return const RenderConstrainedBoxScreen();
      case 'RenderCustomPaintScreen()':
        return const RenderCustomPaintScreen();
      case 'RenderDecoratedBoxScreen()':
        return const RenderDecoratedBoxScreen();
      case 'RenderFlexScreen()':
        return const RenderFlexScreen();
      case 'RenderIgnorePointerScreen()':
        return const RenderIgnorePointerScreen();
      case 'RenderIndexedSemanticsScreen()':
        return const RenderIndexedSemanticsScreen();
      case 'RenderObjectScreen()':
        return const RenderObjectScreen();
      case 'RenderObjectElementScreen()':
        return const RenderObjectElementScreen();
      case 'RenderParagraphScreen()':
        return const RenderParagraphScreen();
      case 'RenderPlatformViewScreen()':
        return const RenderPlatformViewScreen();
      case 'RenderPositionedBoxScreen()':
        return const RenderPositionedBoxScreen();
      case 'RenderProxyBoxScreen()':
        return const RenderProxyBoxScreen();
      case 'RenderShaderMaskScreen()':
        return const RenderShaderMaskScreen();
      case 'RenderShiftedBoxScreen()':
        return const RenderShiftedBoxScreen();
      case 'RenderSizedBoxScreen()':
        return const RenderSizedBoxScreen();
      case 'RenderSliverFillRemainingScreen()':
        return const RenderSliverFillRemainingScreen();
      case 'RenderSliverGridScreen()':
        return const RenderSliverGridScreen();
      case 'RenderSliverListScreen()':
        return const RenderSliverListScreen();
      case 'RenderSliverPaddingScreen()':
        return const RenderSliverPaddingScreen();
      case 'RenderStackScreen()':
        return const RenderStackScreen();
      case 'RenderUiKitViewScreen()':
        return const RenderUiKitViewScreen();
      case 'RenderViewScreen()':
        return const RenderViewScreen();
      case 'RenderViewportScreen()':
        return const RenderViewportScreen();
      case 'ScrollPhysicsScreen()':
        return const ScrollPhysicsScreen();
      case 'ScrollableScreen()':
        return const ScrollableScreen();
      case 'ScrollControllerScreen()':
        return const ScrollControllerScreen();
      case 'ShaderScreen()':
        return const ShaderScreen();
      case 'ShowGeneralDialogScreen()':
        return const ShowGeneralDialogScreen();
      case 'SliverAnimatedGridScreen()':
        return const SliverAnimatedGridScreen();
      case 'SliverAnimatedListScreen()':
        return const SliverAnimatedListScreen();
      case 'SliverChildBuilderDelegateScreen()':
        return const SliverChildBuilderDelegateScreen();
      case 'SliverChildListDelegateScreen()':
        return const SliverChildListDelegateScreen();
      case 'SliverMultiBoxAdaptorElementScreen()':
        return const SliverMultiBoxAdaptorElementScreen();
      case 'SliverOpacityScreen()':
        return const SliverOpacityScreen();
      case 'SliverPersistentHeaderScreen()':
        return const SliverPersistentHeaderScreen();
      case 'SingleChildRenderObjectElementScreen()':
        return const SingleChildRenderObjectElementScreen();
      case 'StatefulElementScreen()':
        return const StatefulElementScreen();
      case 'StatelessElementScreen()':
        return const StatelessElementScreen();
      case 'StepperScreen()':
        return const StepperScreen();
      case 'SystemChromeScreen()':
        return const SystemChromeScreen();
      case 'TabControllerScreen()':
        return const TabControllerScreen();
      case 'TextAlignScreen()':
        return const TextAlignScreen();
      case 'TextOverflowScreen()':
        return const TextOverflowScreen();
      case 'TextSelectionThemeDataScreen()':
        return const TextSelectionThemeDataScreen();
      case 'TextSpanScreen()':
        return const TextSpanScreen();
      case 'TickerProviderStateMixinScreen()':
        return const TickerProviderStateMixinScreen();
      case 'TimePickerScreen()':
        return const TimePickerScreen();
      case 'ToggleButtonsScreen()':
        return const ToggleButtonsScreen();
      case 'TweenAnimationBuilderScreen()':
        return const TweenAnimationBuilderScreen();
      case 'UiKitViewScreen()':
        return const UiKitViewScreen();
      default:
        return Center(child: Text('Unknown Widget: $widgetString'));
    }
  }
}
