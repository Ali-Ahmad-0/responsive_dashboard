import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expences_item.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  int selectedIndex = -1;
  List<AllExpencesItemModel> items = [
    AllExpencesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'Augest 2025',
      amount: '\$20,129',
    ),
    AllExpencesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'Augest 2025',
      amount: '\$20,129',
    ),
    AllExpencesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'Augest 2025',
      amount: '\$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(height: 16),
            Row(
              children: List.generate(items.length, (index) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: index == 1
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                            child: AllExpensesItem(
                              itemModel: items[index],
                              isActive: selectedIndex == index,
                            ),
                          )
                        : AllExpensesItem(
                            itemModel: items[index],
                            isActive: selectedIndex == index,
                          ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
