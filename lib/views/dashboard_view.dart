import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/widgets/tablet_layout.dart';
import 'package:responsive_dashboard/widgets/mobile_layout.dart';

class DashboardViewBody extends StatelessWidget {
  DashboardViewBody({super.key});
  final GlobalKey<ScaffoldState> scafoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      drawer: MediaQuery.of(context).size.width < 800 ? CustomDrawer() : null,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  scafoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu, color: Color(0xff064061)),
              ),
            )
          : null,
      backgroundColor: Color(0xffF7F9FA),
      body: Adabtive(
        mobileLayout: (context) => MobileLayout(),
        tableLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
