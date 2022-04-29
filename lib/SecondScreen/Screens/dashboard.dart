import 'package:assessment/SecondScreen/Widgets/alerts_widget.dart';
import 'package:assessment/SecondScreen/Widgets/assets_widget.dart';
import 'package:assessment/SecondScreen/Widgets/battery_widget.dart';
import 'package:assessment/SecondScreen/Widgets/inventory_widget.dart';
import 'package:assessment/SecondScreen/Widgets/maintenance_widget.dart';
import 'package:assessment/SecondScreen/Widgets/quick_links_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: BottomNavigationBar(
                unselectedItemColor: Colors.white,
                backgroundColor: Colors.black,
                selectedItemColor: Colors.green,
                type: BottomNavigationBarType.fixed,
                items: [
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Dashboard"),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.devices), label: "Devices"),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.add_chart), label: "Assets"),
                  BottomNavigationBarItem(
                      icon: Stack(
                        children: [
                          const Icon(Icons.ring_volume),
                          Positioned(
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(0.1.h),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(1.h)),
                              constraints: BoxConstraints(
                                  minWidth: 1.5.w, minHeight: 1.2.h),
                            ),
                          ),
                        ],
                      ),
                      label: "Alerts"),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.more), label: "More"),
                ]),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
          child: Column(
            children: const [
              AssetsWidget(),
              InventoryWidget(),
              BatteryWidget(),
              AlertsWidget(),
              MaintenanceWidget(),
              QuickLinksWidget()
            ],
          ),
        ),
      ),
    );
  }
}
