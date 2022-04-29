import 'package:assessment/data/available_lists.dart';
import 'package:fl_chart/fl_chart.dart';

List<PieChartSectionData> getSections() => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final value = PieChartSectionData(
          color: data.color, value: data.percent, showTitle: false);
      return MapEntry(index, value);
    })
    .values
    .toList();
