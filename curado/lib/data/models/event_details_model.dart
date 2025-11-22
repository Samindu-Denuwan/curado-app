// To parse this JSON data, do
//
//     final eventDetails = eventDetailsFromJson(jsonString);

import 'dart:convert';

EventDetails eventDetailsFromJson(String str) =>
    EventDetails.fromJson(json.decode(str));

String eventDetailsToJson(EventDetails data) => json.encode(data.toJson());

class EventDetails {
  String? id;
  String? imgUrl;
  String? title;
  String? date;
  String? time;
  String? host;
  String? venue;
  String? type;
  String? about;
  List<String>? gallary;

  EventDetails({
    this.id,
    this.imgUrl,
    this.title,
    this.date,
    this.time,
    this.host,
    this.venue,
    this.type,
    this.about,
    this.gallary,
  });

  factory EventDetails.fromJson(Map<String, dynamic> json) => EventDetails(
    id: json["id"],
    imgUrl: json["imgUrl"],
    title: json["title"],
    date: json["date"],
    time: json["time"],
    host: json["host"],
    venue: json["venue"],
    type: json["type"],
    about: json["about"],
    gallary: json["gallary"] == null
        ? []
        : List<String>.from(json["gallary"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "imgUrl": imgUrl,
    "title": title,
    "date": date,
    "time": time,
    "host": host,
    "venue": venue,
    "type": type,
    "about": about,
    "gallary": gallary == null
        ? []
        : List<dynamic>.from(gallary!.map((x) => x)),
  };
}
