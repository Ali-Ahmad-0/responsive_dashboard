import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';
import 'package:responsive_dashboard/widgets/income_header.dart'
    show IncomeHeader;

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          children: [
            IncomeHeader(),
            SizedBox(height: 16),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: IncomeChart()),
                  SizedBox(width: 40),
                  Expanded(flex: 2, child: IncomeDetailsListview()),
                ],
              ),
            ),
            Divider(height: 48, color: Color(0xfff1f1f1)),
            Text('See detail', style: AppStyles.textSimiBold16.copyWith(color: Color(0xff4EB7F2))),
          ],
        ),
      ),
    );
  }
}
