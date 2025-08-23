import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/latest_trancations.dart';
import 'package:responsive_dashboard/widgets/quick_Invoices.dart';
import 'package:responsive_dashboard/widgets/quick_invoices_form.dart';

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
            LatestTrancations(),
            Divider(height: 48, color: Color(0xfff1f1f1)),
            QuickInvoicesForm(),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: CustomButton(data: 'Add more details')),
                SizedBox(width: 24),
                Expanded(
                  child: CustomButton(
                    data: 'Send Money',
                    bgColor: Color(0xff4EB7F2),
                    txtColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
