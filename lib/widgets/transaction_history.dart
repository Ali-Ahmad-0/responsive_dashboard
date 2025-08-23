import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';
import 'package:responsive_dashboard/widgets/transaction_history_listview.dart';
import 'package:responsive_dashboard/widgets/trasaction_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 18),
        Text(
          '13 April 2022',
          style: AppStyles.textMedium16.copyWith(color: Color(0xffAAAAAA)),
        ),
        TransactionHistoryListview(),
      ],
    );
  }
}
