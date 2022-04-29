import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../data/available_lists.dart';
import '../../utilities/basic_utilities.dart';

class BatteryWidget extends StatelessWidget {
  const BatteryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicUtilities()
        .returnSameStyle("Battery", "", 18.h, AvailableLists().batteryList);
  }
}
