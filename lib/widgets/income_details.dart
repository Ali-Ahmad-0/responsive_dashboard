import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_model.dart';
import 'package:responsive_dashboard/widgets/income_detials_item.dart';

class IncomeDetailsListview extends StatelessWidget {
  const IncomeDetailsListview({super.key});
  static List<IncomeDetailsModel> items = [
    IncomeDetailsModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: '40%',
    ),
    IncomeDetailsModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: '25%',
    ),
    IncomeDetailsModel(
      color: Color(0xff064061),
      title: 'Product royality',
      value: '20%',
    ),
    IncomeDetailsModel(color: Color(0xffE2DECD), title: 'Other', value: '15%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeDetialsItem(item: items[index]);
      },
    );
  }
}
