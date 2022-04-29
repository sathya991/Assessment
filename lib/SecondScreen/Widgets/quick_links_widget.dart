import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/basic_utilities.dart';

class QuickLinksWidget extends StatelessWidget {
  const QuickLinksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 4.h, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Quick Links",
                style: BasicUtilities().headTextStyle(),
              ),
              GestureDetector(
                onTap: () {},
                child: const FaIcon(FontAwesomeIcons.squarePen),
              )
            ],
          ),
          SizedBox(
            height: 2.5.h,
          ),
          Container(
            height: 15.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  BasicUtilities()
                      .styleRoundedButton("View All Devices", () {}),
                  SizedBox(
                    width: 2.w,
                  ),
                  BasicUtilities().styleRoundedButton("Support", () {})
                ]),
                SizedBox(
                  height: 1.5.h,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  BasicUtilities()
                      .styleRoundedButton("View All Vehicles", () {}),
                  SizedBox(
                    width: 2.w,
                  ),
                  BasicUtilities().styleRoundedButton("My Messages", () {})
                ]),
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
