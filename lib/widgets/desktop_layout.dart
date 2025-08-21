import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 8),
        Expanded(flex: 2, child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 32),
          child: Column(
            children: [
              AllExpenses(),
          
              SizedBox(height: 24),
          
              QuickInvoice()
            ],
          ),
        ))
      ],
    );
  }
}
