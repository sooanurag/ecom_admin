import 'package:ecom_admin/core/utils/constants/enums/app_enums.dart';
import 'package:flutter/material.dart';

/// A responsive layout widget that adapts its content based on screen size.
/// Unlike LayoutBuilder, this widget is not dependent on parent constraints
/// but rather uses the device's screen dimensions directly.
///
/// This widget automatically switches between desktop, tablet, and mobile layouts
/// based on the following breakpoints:
/// - Desktop: >= 1366px
/// - Tablet: >= 768px and < 1366px
/// - Mobile: < 768px

class AdaptiveLayoutBuilder extends StatelessWidget {
  const AdaptiveLayoutBuilder({
    super.key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  });

  /// The widget to display on desktop screens (>= 1366px)
  final Widget desktop;

  /// The widget to display on tablet screens (>= 768px and < 1366px)
  final Widget tablet;

  /// The widget to display on mobile screens (< 768px)
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    final screenSize = ScreenSize.of(context);
    if (screenSize.isDesktop) {
      return desktop;
    } else if (screenSize.isTablet) {
      return tablet;
    } else if (screenSize.isMobile) {
      return mobile;
    } else {
      return Text(screenSize.name);
    }
    // TODO:
    // return switch (ss) {
    //   ScreenSize.desktop => desktop,
    //   ScreenSize.tablet => tablet,
    //   ScreenSize.mobile => mobile,
    // };
  }
}
