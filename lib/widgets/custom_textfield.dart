import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hint, required this.title});
  final String hint, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.textMedium16),
        SizedBox(height: 12),
        TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppStyles.textRegular16.copyWith(
              color: Color(0xffaaaaaa),
            ),
            fillColor: Color(0xfff1f1f1),
            filled: true,
            border: borderbuilder(),
            focusedBorder: borderbuilder(),
            enabledBorder: borderbuilder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder borderbuilder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Color(0xfff1f1f1)),
    );
  }
}
