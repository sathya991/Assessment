import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0.h,
      thickness: 0.1.h,
      indent: 2.6.w,
      endIndent: 2.6.w,
    );
  }
}
