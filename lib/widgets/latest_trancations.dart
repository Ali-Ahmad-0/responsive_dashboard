import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';
import 'package:responsive_dashboard/widgets/latest_Trasactions_listview.dart';

class LatestTrancations extends StatelessWidget {
  const LatestTrancations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transactions', style: AppStyles.textMedium16),
        SizedBox(height: 12),
        LatestTrasactionsListview()
      ],
    );
  }
}
