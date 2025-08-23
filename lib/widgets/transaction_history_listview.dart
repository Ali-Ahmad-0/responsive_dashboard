import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transactioin_listTile.dart';

class TransactionHistoryListview extends StatelessWidget {
  const TransactionHistoryListview({super.key});
  static List<TransactioinListtile> items = [
    TransactioinListtile(
      transactionModel: TransactionModel(
        subTitle: '23 Oct 2024',
        amount: r'$20,343',
        isWithdrawal: true,
        title: 'Cash Withdrawal',
      ),
    ),
    TransactioinListtile(
      transactionModel: TransactionModel(
        subTitle: '23 Sep 2024',
        amount: r'$21,100',
        isWithdrawal: false,
        title: 'Landing Page project',
      ),
    ),
    TransactioinListtile(
      transactionModel: TransactionModel(
        subTitle: '23 Oct 2024',
        amount: r'$10,222',
        isWithdrawal: false,
        title: 'Juni Mobile App project',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,

      itemBuilder: (context, index) {
        return items[index];
      },
    );
  }
}
