import 'package:flutter/material.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: AnimatedContainer(
        duration: Duration(microseconds: 1),
        height: 8,
        width: isActive ? 32 : 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isActive ? Color(0xff4EB7F2) : Color(0xffE8E8E8),
        ),
      ),
    );
  }
}
