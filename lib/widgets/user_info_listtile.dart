import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';

class UserInfoListtile extends StatelessWidget {
  const UserInfoListtile({super.key, required this.image, required this.title, required this.subTitle});
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xfffafafa),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title, style: AppStyles.textSimiBold16),
        subtitle: Text(subTitle, style: AppStyles.textRegular12),
      ),
    );
  }
}
