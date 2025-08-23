import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyles.textSimiBold16),
        RangeOptions(),
      ],
    );
  }
}
