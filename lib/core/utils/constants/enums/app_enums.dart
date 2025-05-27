
import 'package:flutter/material.dart';

import 'package:ecom_admin/core/routes/app_pages.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';

/// Enum representing different screen sizes based on width breakpoints.
///
/// This enum is used to determine the appropriate layout based on the screen width.
/// The breakpoints are:
/// - Desktop: >= 1366px
/// - Tablet: >= 768px and < 1366px
/// - Mobile: < 768px
enum ScreenSize {
  desktop(breakpoint: (lower: 1366, upper: double.infinity)),
  tablet(breakpoint: (lower: 768, upper: 1366)),
  mobile(breakpoint: (lower: double.negativeInfinity, upper: 768));

  const ScreenSize({required this.breakpoint});

  /// The width breakpoint range for this screen size
  final ({double lower, double upper}) breakpoint;

  /// Returns true if this is a desktop screen size
  bool get isDesktop => this == desktop;

  /// Returns true if this is a tablet screen size
  bool get isTablet => this == tablet;

  /// Returns true if this is a mobile screen size
  bool get isMobile => this == mobile;

  /// Returns true if this is a larger screen (desktop or tablet)
  bool get isLargerScreen => isDesktop || isTablet;

  /// Returns the current screen size for the given context
  static ScreenSize of(BuildContext context) {
    return fromWidth(MediaQuery.of(context).size.width);
  }

  /// Returns the current screen size based on the given width
  static ScreenSize fromWidth(double width) {
    if (width >= ScreenSize.desktop.breakpoint.lower) {
      return desktop;
    } else if (width >= ScreenSize.tablet.breakpoint.lower &&
        width < ScreenSize.tablet.breakpoint.upper) {
      return tablet;
    }
    return mobile;
  }
}

enum NavRailDestination {
  home(AppRoutes.INITIAL, label: 'Home', icon: Iconsax.home),
  dashboard(AppRoutes.INITIAL, label: 'Dash', icon: Iconsax.music_dashboard),
  settings(AppRoutes.INITIAL, label: 'Settings',icon: Iconsax.settings),
  login(AppRoutes.INITIAL, label: 'Login', icon: Iconsax.login);
  // TODO: update-route-names

  const NavRailDestination(
    this.routeName, {
    required this.label,
    required this.icon,
  });

  final String routeName;
  final String label;
  final IconData icon;

  static NavRailDestination? fromRouteName(String? routeName) => values.firstWhereOrNull((des) => des.routeName == routeName);
}

