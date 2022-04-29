import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../utilities/basic_utilities.dart';

class DataWidget extends StatelessWidget {
  final text;
  final Widget widget;
  const DataWidget({Key? key, required this.text, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(2.5.w, 1.h, 0, 1.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          widget,
          SizedBox(
            width: 2.w,
          ),
          Text(
            text,
            style: BasicUtilities().listTextStyle(),
          )
        ],
      ),
    );
  }
}
