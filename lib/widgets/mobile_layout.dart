import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/card_and_transaction.dart';
import 'package:responsive_dashboard/widgets/income.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //AllExpensesAndQuickInvoicesSection(),
          //CardAndTransaction(),
          Income(),
        ],
      ),
    );
  }
}
