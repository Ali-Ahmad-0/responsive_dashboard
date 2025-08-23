import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int isActiveInex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(child: PieChart(getPieChartData())),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          isActiveInex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: isActiveInex == 0 ? 35 : 30,
          value: 40,
          color: Color(0xff208CC8),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: isActiveInex == 1 ? 35 : 30,
          value: 25,
          color: Color(0xff4EB7F2),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: isActiveInex == 2 ? 35 : 30,
          value: 20,
          color: Color(0xff064061),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: isActiveInex == 3 ? 35 : 30,
          value: 15,
          color: Color(0xffE2DECD),
          showTitle: false,
        ),
      ],
    );
  }
}
