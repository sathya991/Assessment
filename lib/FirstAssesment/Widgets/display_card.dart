import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DisplayCard extends StatelessWidget {
  final id;
  final name;
  final color;
  final pantone_value;
  final year;
  const DisplayCard(
      {Key? key, this.id, this.name, this.color, this.pantone_value, this.year})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(year.toString()),
      tileColor: HexColor(color),
      trailing: Text(pantone_value.toString()),
      leading: Text(id.toString()),
    );
  }
}
