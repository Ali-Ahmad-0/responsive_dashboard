import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_textfield.dart';

class QuickInvoicesForm extends StatelessWidget {
  const QuickInvoicesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextfield(
                hint: 'Type customer name',
                title: 'Customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTextfield(
                hint: 'Type customer email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomTextfield(
                hint: 'Type Item name',
                title: 'Item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTextfield(hint: 'EGP', title: 'Item amount'),
            ),
          ],
        ),
      ],
    );
  }
}
