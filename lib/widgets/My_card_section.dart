import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles_app.dart';
import 'package:responsive_dashboard/widgets/dots_indecator.dart';
import 'package:responsive_dashboard/widgets/my_cardPageView.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int pageCurrentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        pageCurrentIndex = pageController.page!.round();
      });
    });


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.textSimiBold20),
        SizedBox(height: 20),
        MyCardpageview(pageController: pageController,),
        SizedBox(height: 20),
        Row(
          children: List.generate(3, (index) => DotsIndecator(isActive:index == pageCurrentIndex )),
        ),
      ],
    );
  }
}
