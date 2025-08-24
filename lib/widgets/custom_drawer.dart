import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item.dart';
import 'package:responsive_dashboard/models/user_info.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_items_listview.dart';
import 'package:responsive_dashboard/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListtile(
              horizon: 20,
              vertic: 10,
              userInfoModel: UserInfoModel(
                subTitle: 'demo@gmail.com',
                title: 'Lekan Okeowo',
                image: Assets.imagesProfile,
              ),
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
