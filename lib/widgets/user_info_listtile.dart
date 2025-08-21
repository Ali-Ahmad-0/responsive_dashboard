import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/user_info.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';

class UserInfoListtile extends StatelessWidget {
  const UserInfoListtile({super.key, required this.userInfoModel,  required this.horizon, required this.vertic});
  final UserInfoModel userInfoModel;
  final double horizon, vertic;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: horizon, vertical: vertic),
      child: Card(
        color: Color(0xfffafafa),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(userInfoModel.title, style: AppStyles.textSimiBold16),
          subtitle: Text(
            userInfoModel.subTitle,
            style: AppStyles.textRegular12,
          ),
        ),
      ),
    );
  }
}
