import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.drawerItem,
    required this.isActivated,
  });
  final bool isActivated;
  final DrawerItem drawerItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.image),
      title: Text(
        
        drawerItem.title,
        style: isActivated ? AppStyles.textBold16 : AppStyles.textMedium16,
      ),
      trailing: isActivated
          ? Container(width: 3.3, color: Color(0xff4EB7F2))
          : SizedBox(),
    );
  }
}
