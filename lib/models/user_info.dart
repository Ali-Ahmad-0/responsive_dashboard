import 'package:responsive_dashboard/models/drawer_item.dart';

class UserInfoModel extends DrawerItem {
  final String subTitle;
  UserInfoModel({ required this.subTitle, required super.title, required super.image});
}
