import 'package:assessment/data/available_lists.dart';
import 'package:assessment/utilities/basic_utilities.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AssetsWidget extends StatelessWidget {
  const AssetsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicUtilities().returnSameStyle(
        "Assets", "View All Vehicles", 40.h, AvailableLists().assetsList);
  }
}
