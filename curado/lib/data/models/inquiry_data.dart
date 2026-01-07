import 'dart:convert';

InquiryData inquiryDataFromJson(String str) =>
    InquiryData.fromJson(json.decode(str));

String inquiryDataToJson(InquiryData data) => json.encode(data.toJson());

class InquiryData {
  int? id;
  String? title;
  String? name;
  String? mobile;
  String? email;
  String? message;

  InquiryData({
    this.id,
    this.title,
    this.name,
    this.mobile,
    this.email,
    this.message,
  });

  /// ===============================
  /// JSON (API)
  /// ===============================
  factory InquiryData.fromJson(Map<String, dynamic> json) => InquiryData(
    id: json["id"],
    title: json["title"],
    name: json["name"],
    mobile: json["mobile"],
    email: json["email"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "name": name,
    "mobile": mobile,
    "email": email,
    "message": message,
  };

  /// ===============================
  /// SQLite
  /// ===============================
  factory InquiryData.fromMap(Map<String, dynamic> map) => InquiryData(
    id: map["id"],
    title: map["title"],
    name: map["name"],
    mobile: map["mobile"],
    email: map["email"],
    message: map["message"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "name": name,
    "mobile": mobile,
    "email": email,
    "message": message,
  };
}
