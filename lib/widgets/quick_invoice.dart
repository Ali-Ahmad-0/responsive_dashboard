import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/latest_trancations.dart';
import 'package:responsive_dashboard/widgets/quick_Invoices.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoicesHeader(),
            SizedBox(height: 24),
            LatestTrancations()
          ],
        ),
      ),
    );
  }
}
