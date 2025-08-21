
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(16),
        border: Border.all(color: Color(0xffF1F1F1)),
      ),
      child: Row(
    
        children: [
          Text('Monthly', style: AppStyles.textMedium16),
          SizedBox(width: 18,),
          Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xff064061)),
        ],
      ),
    );
  }
}
