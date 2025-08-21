import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.data, this.bgColor, this.txtColor});
  final String data;
  Color? bgColor, txtColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: bgColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        
        onPressed: () {},
        child: Text(
          data,
          style: AppStyles.textSimiBold18.copyWith(
            color: txtColor ?? Color(0xff4EB7F2),
          ),
        ),
      ),
    );
  }
}
