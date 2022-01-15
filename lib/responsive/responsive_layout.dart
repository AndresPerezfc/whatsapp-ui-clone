import 'package:flutter/material.dart';

class ResponsiveLayaut extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  const ResponsiveLayaut(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          //WEB SCREEN
          return webScreenLayout;
        }
        // MOBILE SCREEN
        return mobileScreenLayout;
      },
    );
  }
}
