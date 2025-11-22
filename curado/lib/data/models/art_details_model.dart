// To parse this JSON data, do
//
//     final artDetails = artDetailsFromJson(jsonString);

import 'dart:convert';

ArtDetails artDetailsFromJson(String str) =>
    ArtDetails.fromJson(json.decode(str));

String artDetailsToJson(ArtDetails data) => json.encode(data.toJson());

class ArtDetails {
  Art? art;
  Designer? designer;

  ArtDetails({this.art, this.designer});

  factory ArtDetails.fromJson(Map<String, dynamic> json) => ArtDetails(
    art: json["art"] == null ? null : Art.fromJson(json["art"]),
    designer: json["designer"] == null
        ? null
        : Designer.fromJson(json["designer"]),
  );

  Map<String, dynamic> toJson() => {
    "art": art?.toJson(),
    "designer": designer?.toJson(),
  };
}

class Art {
  String? id;
  String? title;
  String? type;
  String? description;
  String? size;
  String? imgUrl;

  Art({
    this.id,
    this.title,
    this.type,
    this.description,
    this.size,
    this.imgUrl,
  });

  factory Art.fromJson(Map<String, dynamic> json) => Art(
    id: json["id"],
    title: json["title"],
    type: json["type"],
    description: json["description"],
    size: json["size"],
    imgUrl: json["imgUrl"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "type": type,
    "description": description,
    "size": size,
    "imgUrl": imgUrl,
  };
}

class Designer {
  String? id;
  String? url;
  String? name;

  Designer({this.id, this.url, this.name});

  factory Designer.fromJson(Map<String, dynamic> json) =>
      Designer(id: json["id"], url: json["url"], name: json["name"]);

  Map<String, dynamic> toJson() => {"id": id, "url": url, "name": name};
}
