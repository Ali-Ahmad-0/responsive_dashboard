import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_listtile.dart';

class LatestTrasactionsListview extends StatelessWidget {
  LatestTrasactionsListview({super.key});
 final List<UserInfoModel> items = [
    UserInfoModel(
      subTitle: 'Madraniadi20@gmail',
      title: 'Madrani Andi',
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      subTitle: 'Josh Nunito@gmail.com',
      title: 'Josua Nunito',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      subTitle: 'Madraniadi20@gmail',
      title: 'Madrani Andi',
      image: Assets.imagesAvatar1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(items.length, (index) {
            return IntrinsicWidth(
              child: (index != 0 && index != (items.length - 1))
                  ? UserInfoListtile(
                      userInfoModel: items[index],
                      horizon: 12,
                      vertic: 0,
                    )
                  : UserInfoListtile(
                      userInfoModel: items[index],
                      horizon: 0,
                      vertic: 0,
                    ),
            );
          }),
        ),
      ),
    );
  }
}
