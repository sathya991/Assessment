// To parse this JSON data, do
//
//     final reqResList = reqResListFromJson(jsonString);

import 'dart:convert';

ReqResList reqResListFromJson(String str) =>
    ReqResList.fromJson(json.decode(str));

String reqResListToJson(ReqResList data) => json.encode(data.toJson());

class ReqResList {
  ReqResList({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    required this.data,
    this.support,
  });

  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Datum> data;
  Support? support;

  factory ReqResList.fromJson(Map<String, dynamic> json) => ReqResList(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        support: Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support?.toJson(),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.year,
    required this.color,
    required this.pantoneValue,
  });

  int id;
  String name;
  int year;
  String color;
  String pantoneValue;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        year: json["year"],
        color: json["color"],
        pantoneValue: json["pantone_value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "year": year,
        "color": color,
        "pantone_value": pantoneValue,
      };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  String? url;
  String? text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
