
import 'package:flutter/cupertino.dart';

class Breakpoint {
  final double start;
  final double end;
  final String name;

  const Breakpoint({required this.start, required this.end, required this.name});
}

class AppResponsive {
  static const Breakpoint mobileBreakpoint = Breakpoint(start: 0, end: 599, name: 'MOBILE');
  static const Breakpoint tabletBreakpoint = Breakpoint(start: 600, end: 800, name: 'TABLET');

  static bool isMobile(BuildContext context) =>
      isScreenSizeInRange(context, mobileBreakpoint);

  static bool isTablet(BuildContext context) =>
      isScreenSizeInRange(context, tabletBreakpoint);

  static bool isPortrait(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.portrait;

  static bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  static bool isScreenSizeInRange(BuildContext context, Breakpoint breakpoint) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= breakpoint.start && screenWidth <= breakpoint.end;
  }

  static bool isScreenSizeAtLeast(BuildContext context, Breakpoint breakpoint) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= breakpoint.start;
  }
}
