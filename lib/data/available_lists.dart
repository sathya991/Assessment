import 'package:assessment/SecondScreen/Widgets/pie_chart.dart';
import 'package:assessment/data/data_widget.dart';
import 'package:assessment/data/divider_widget.dart';
import 'package:assessment/data/half_divider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class AvailableLists {
  List<Widget> assetsList = [
    DataWidget(
      text: "Online (8)",
      widget: FaIcon(
        FontAwesomeIcons.circle,
        size: 1.3.h,
        color: Colors.green,
      ),
    ),
    const DividerWidget(),
    DataWidget(
        text: "Offline (3)",
        widget: FaIcon(
          FontAwesomeIcons.circle,
          size: 1.3.h,
          color: Colors.red[300],
        )),
    const DividerWidget(),
    DataWidget(
      text: "GPS Not Connected (1)",
      widget: FaIcon(
        FontAwesomeIcons.circle,
        size: 1.3.h,
        color: Colors.blue,
      ),
    ),
    const DividerWidget(),
    DataWidget(
      text: "Not Connected (2)",
      widget: FaIcon(
        FontAwesomeIcons.circle,
        size: 1.3.h,
        color: Colors.grey,
      ),
    ),
    const DividerWidget(),
    DataWidget(
      text: "Moving (4)",
      widget: FaIcon(
        FontAwesomeIcons.circle,
        size: 1.3.h,
        color: Colors.green,
      ),
    ),
    const DividerWidget(),
    DataWidget(
      text: "Stopped (2)",
      widget: FaIcon(
        FontAwesomeIcons.diamond,
        size: 1.3.h,
        color: Colors.red[300],
      ),
    ),
    const DividerWidget(),
    DataWidget(
      text: "Idle (2)",
      widget:
          FaIcon(FontAwesomeIcons.caretUp, size: 2.2.h, color: Colors.yellow),
    ),
  ];

//INVENTORY WIDGETS

  List<Widget> inventoryList = [
    Container(
        padding: EdgeInsets.fromLTRB(0, 1.5.h, 0, 1.5.h),
        height: 25.h,
        width: 40.w,
        child: PieChart(PieChartData(
          sections: getSections(),
          borderData: FlBorderData(show: false),
          sectionsSpace: 0,
        ))),
    DataWidget(
      text: "Active (10)",
      widget: FaIcon(
        FontAwesomeIcons.circle,
        size: 1.3.h,
        color: Colors.green,
      ),
    ),
    const DividerWidget(),
    DataWidget(
      text: "Inactive (3)",
      widget: FaIcon(
        FontAwesomeIcons.circle,
        size: 1.3.h,
        color: Colors.red[300],
      ),
    ),
    const DividerWidget(),
    DataWidget(
      text: "Deactivated (2)",
      widget: FaIcon(
        FontAwesomeIcons.circle,
        size: 1.3.h,
        color: Colors.blue,
      ),
    ),
    const DividerWidget(),
    DataWidget(
      text: "Retired (8)",
      widget: FaIcon(
        FontAwesomeIcons.circle,
        size: 1.3.h,
        color: Colors.grey,
      ),
    ),
  ];

//BATTERY LIST

  List<Widget> batteryList = [
    DataWidget(
      text: "Fully Charged(8)",
      widget: RotatedBox(
        quarterTurns: 3,
        child: FaIcon(
          FontAwesomeIcons.batteryFull,
          size: 1.3.h,
          color: Colors.green,
        ),
      ),
    ),
    const HalfDividerWidget(),
    DataWidget(
      text: "Low (3)",
      widget: RotatedBox(
        quarterTurns: 3,
        child: FaIcon(
          FontAwesomeIcons.batteryHalf,
          size: 1.3.h,
          color: Colors.yellow,
        ),
      ),
    ),
    const HalfDividerWidget(),
    DataWidget(
      text: "Warning (1)",
      widget: RotatedBox(
        quarterTurns: 3,
        child: FaIcon(
          FontAwesomeIcons.batteryQuarter,
          size: 1.3.h,
          color: Colors.orange,
        ),
      ),
    ),
    const HalfDividerWidget(),
  ];

  //ALERT LIST
  List<Widget> alertList = [
    DataWidget(
      text: "Speed (10)",
      widget: FaIcon(
        FontAwesomeIcons.gauge,
        size: 2.h,
      ),
    ),
    const HalfDividerWidget(),
    DataWidget(
        text: "Geofence (5)",
        widget: FaIcon(
          FontAwesomeIcons.locationCrosshairs,
          size: 2.h,
        )),
    const HalfDividerWidget(),
    DataWidget(
      text: "Ignition (8)",
      widget: FaIcon(
        FontAwesomeIcons.key,
        size: 2.h,
      ),
    ),
    const HalfDividerWidget(),
  ];

  //Maintenance List
  List<Widget> maintenanceList = [
    DataWidget(
      text: "Completed (2)",
      widget: FaIcon(
        FontAwesomeIcons.wrench,
        size: 1.3.h,
        color: Colors.green,
      ),
    ),
    const HalfDividerWidget(),
    DataWidget(
      text: "Scheduled (1)",
      widget: FaIcon(
        FontAwesomeIcons.wrench,
        size: 1.3.h,
        color: Colors.blue,
      ),
    ),
    const HalfDividerWidget(),
    DataWidget(
      text: "Expired (1)",
      widget: FaIcon(
        FontAwesomeIcons.wrench,
        size: 1.3.h,
        color: Colors.red[200],
      ),
    ),
    const HalfDividerWidget(),
    DataWidget(
      text: "Other (0)",
      widget: FaIcon(
        FontAwesomeIcons.wrench,
        size: 1.3.h,
        color: Colors.grey,
      ),
    ),
  ];
}

class PieData {
//PIE DATA
  static List<Data> data = [
    Data(percent: 20, color: Colors.red),
    Data(percent: 30, color: Colors.grey),
    Data(percent: 40, color: Colors.green),
    Data(percent: 10, color: Colors.blue)
  ];
}

class Data {
  final double percent;
  final Color color;
  Data({required this.percent, required this.color});
}
