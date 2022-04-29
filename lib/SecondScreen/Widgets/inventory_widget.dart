import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../data/available_lists.dart';
import '../../utilities/basic_utilities.dart';

class InventoryWidget extends StatelessWidget {
  const InventoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicUtilities().returnSameStyle(
        "Inventory", "View All Devices", 50.h, AvailableLists().inventoryList);
  }
}
