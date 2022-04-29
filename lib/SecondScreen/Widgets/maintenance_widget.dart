import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../data/available_lists.dart';
import '../../utilities/basic_utilities.dart';

class MaintenanceWidget extends StatelessWidget {
  const MaintenanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicUtilities().returnSameStyle(
        "Maintenance", "", 25.h, AvailableLists().maintenanceList);
  }
}
