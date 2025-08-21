import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.isActive,
  });
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: isActive
                ? Colors.white.withValues(alpha: .1)
                : Color(0xffFAFAFA),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                isActive ? Colors.white : Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Icon(
          Icons.keyboard_arrow_right_rounded,
          size: 42,
          color: isActive ? Colors.white : Color(0xff064061),
        ),
      ],
    );
  }
}
