import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_model.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';

class IncomeDetialsItem extends StatelessWidget {
  const IncomeDetialsItem({super.key, required this.item});
  final IncomeDetailsModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(height: 12, width: 12, decoration: BoxDecoration(borderRadius: BorderRadius.circular(16) , color: item.color),),
      title: Text(item.title, style: AppStyles.textRegular16),
      trailing: Text(item.value, style: AppStyles.textMedium16),
    );
  }
}
