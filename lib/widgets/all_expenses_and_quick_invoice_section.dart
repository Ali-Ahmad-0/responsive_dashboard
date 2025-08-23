
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/income.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoicesSection extends StatelessWidget {
  const AllExpensesAndQuickInvoicesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       SizedBox(height: 40,),
        AllExpenses(),
    
        SizedBox(height: 24),
    
        QuickInvoice(), 
        Income()
      ],
    );
  }
}
