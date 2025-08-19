import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_item.dart';

class DrawerItemsListview extends StatefulWidget {
  const DrawerItemsListview({super.key});

  @override
  State<DrawerItemsListview> createState() => _DrawerItemsListviewState();
}

class _DrawerItemsListviewState extends State<DrawerItemsListview> {
  static const List<DrawerItem> items = [
    DrawerItem(title: 'Dashboard ', image: Assets.imagesDashboard),
    DrawerItem(title: 'My Trancactions', image: Assets.imagesTransaction),
    DrawerItem(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItem(title: 'Wallet Account', image: Assets.imagesWallet),
    DrawerItem(title: 'My Investments', image: Assets.imagesInvestments),
  ];
  int activatedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
   
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (activatedIndex != index) {
              setState(() {
                activatedIndex = index;
              });
              print(activatedIndex);
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomDrawerItem(
              drawerItem: items[index],
              isActivated: activatedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
