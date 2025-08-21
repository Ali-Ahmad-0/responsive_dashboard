
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';

class QuickInvoicesHeader extends StatelessWidget {
  const QuickInvoicesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: AppStyles.textSimiBold20),
        Spacer(),
        Container(
          width: 48,
          height: 48,
    
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFAFAFA),
          ),
          child: Icon(Icons.add, color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
