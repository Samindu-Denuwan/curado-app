// To parse this JSON data, do
//
//     final artistDetails = artistDetailsFromJson(jsonString);

import 'dart:convert';

ArtistDetails artistDetailsFromJson(String str) =>
    ArtistDetails.fromJson(json.decode(str));

String artistDetailsToJson(ArtistDetails data) => json.encode(data.toJson());

class ArtistDetails {
  String? id;
  String? name;
  String? imgUrl;
  String? about;

  ArtistDetails({this.id, this.name, this.imgUrl, this.about});

  factory ArtistDetails.fromJson(Map<String, dynamic> json) => ArtistDetails(
    id: json["id"],
    name: json["name"],
    imgUrl: json["imgUrl"],
    about: json["about"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "imgUrl": imgUrl,
    "about": about,
  };
}
