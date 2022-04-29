import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../data/available_lists.dart';
import '../../utilities/basic_utilities.dart';

class AlertsWidget extends StatelessWidget {
  const AlertsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicUtilities().returnSameStyle(
        "Alert - Update Icons", "", 18.h, AvailableLists().alertList);
  }
}
