import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expences_item.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
    required this.isActive,
  });
  final AllExpencesItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: isActive ? Color(0xff4EB7F2) : Color(0xfff1f1f1),
        ),
        color: isActive ? Color(0xff4EB7F2) : Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(image: itemModel.image, isActive: isActive),
            SizedBox(height: 34),
            Text(
              itemModel.title,
              style: isActive
                  ? AppStyles.textMedium16.copyWith(color: Colors.white)
                  : AppStyles.textMedium16,
            ),
            SizedBox(height: 8),
            Text(
              itemModel.date,
              style: isActive
                  ? AppStyles.textRegular14.copyWith(color: Colors.white)
                  : AppStyles.textRegular14,
            ),
            SizedBox(height: 16),
            Text(
              itemModel.amount,
              style: isActive
                  ? AppStyles.textSimiBold24.copyWith(color: Colors.white)
                  : AppStyles.textSimiBold24,
            ),
          ],
        ),
      ),
    );
  }
}
