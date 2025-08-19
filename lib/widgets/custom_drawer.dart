import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_items_listview.dart';
import 'package:responsive_dashboard/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListtile(
              image: Assets.imagesProfile,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListview(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                CustomDrawerItem(
                  drawerItem: DrawerItem(
                    title: 'Setting system',
                    image: Assets.imagesSettings,
                  ),
                  isActivated: false,
                ),
                CustomDrawerItem(
                  drawerItem: DrawerItem(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                  isActivated: false,
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
