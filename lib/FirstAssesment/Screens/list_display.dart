import 'package:assessment/ApiManager/api_manager.dart';
import 'package:assessment/FirstAssesment/Widgets/display_card.dart';
import 'package:assessment/models/req_res_list.dart';
import 'package:flutter/material.dart';

class ListDisplay extends StatefulWidget {
  static const listDisplayRoute = '/list-display-route';
  const ListDisplay({Key? key}) : super(key: key);

  @override
  State<ListDisplay> createState() => _ListDisplayState();
}

class _ListDisplayState extends State<ListDisplay> {
  List<Datum>? list;
  @override
  void initState() {
    // TODO: implement initState
    getAPIData();
    super.initState();
  }

  Future<ReqResList?> getAPIData() async {
    return await ApiManager().getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<ReqResList?>(
          future: getAPIData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
                itemCount: snapshot.data!.data.length,
                itemBuilder: (context, index) {
                  return DisplayCard(
                      id: snapshot.data?.data[index].id,
                      color: snapshot.data?.data[index].color,
                      name: snapshot.data?.data[index].name,
                      year: snapshot.data?.data[index].year,
                      pantone_value: snapshot.data?.data[index].pantoneValue);
                });
          }),
    );
  }
}
