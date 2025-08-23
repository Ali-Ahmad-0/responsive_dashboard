import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/card_and_transaction.dart';
import 'package:responsive_dashboard/widgets/income.dart';

class CardTransactionIncomeSection extends StatelessWidget {
  const CardTransactionIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CardAndTransaction(), 
          Expanded(child: Income())
        ],
      ),
    );
  }
}