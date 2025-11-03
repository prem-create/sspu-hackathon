import 'package:flutter/material.dart';
import 'package:sspu_hackathon/desktop_pages/desktop_login_page.dart';
import 'package:sspu_hackathon/mobile_pages/mobile_home_page.dart';

class DeviceSelect extends StatelessWidget {
  const DeviceSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // you can tweak these breakpoints as needed
        if (constraints.maxWidth >= 900) {
          // Desktop + Web
          return const DesktopLoginPage();
        } else {
          // Mobile + Tablet
          return const MobileHomePage();
        }
      },
    );
  }
}
