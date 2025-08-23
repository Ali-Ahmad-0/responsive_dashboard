import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';

class TransactioinListtile extends StatelessWidget {
  const TransactioinListtile({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        title: Text(transactionModel.title, style: AppStyles.textSimiBold16),
        subtitle: Text(
          transactionModel.subTitle,
          style: AppStyles.textRegular16.copyWith(color: Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.textSimiBold20.copyWith(
            color: transactionModel.isWithdrawal
                ? Color(0xffF3735E)
                : Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
