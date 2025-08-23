
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History', style: AppStyles.textSimiBold20),
        Text(
          'See all',
          style: AppStyles.textMedium16.copyWith(color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
