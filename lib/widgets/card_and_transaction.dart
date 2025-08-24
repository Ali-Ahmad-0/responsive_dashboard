import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/My_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class CardAndTransaction extends StatelessWidget {
  const CardAndTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          MyCardSection(),
          Divider(color: Color(0xfff1f1f1), height: 40),
          TransactionHistory(),
        ],
      ),
    );
  }
}
