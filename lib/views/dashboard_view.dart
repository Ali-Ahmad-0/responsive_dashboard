import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/widgets/tablet_layout.dart';
import 'package:responsive_dashboard/widgets/mobile_layout.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: Adabtive(
        mobileLayout: (context) => MobileLayout(),
        tableLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
