import 'dart:convert';

FavouriteModel favouriteModelFromJson(String str) =>
    FavouriteModel.fromJson(json.decode(str));

String favouriteModelToJson(FavouriteModel data) => json.encode(data.toJson());

class FavouriteModel {
  bool favourite;
  String shlokImg;
  String shlokNo;
  String shlokName;
  String meaning;

  FavouriteModel({
    required this.favourite,
    required this.shlokImg,
    required this.shlokNo,
    required this.shlokName,
    required this.meaning,
  });

  factory FavouriteModel.fromJson(Map<String, dynamic> json) => FavouriteModel(
    favourite: json["favourite"],
    shlokImg: json["shlok_img"],
    shlokNo: json["shlok_no"],
    shlokName: json["shlok_name"],
    meaning: json["meaning"],
  );

  Map<String, dynamic> toJson() => {
    "favourite": favourite,
    "shlok_img": shlokImg,
    "shlok_no": shlokNo,
    "shlok_name": shlokName,
    "meaning": meaning,
  };
}

List<FavouriteModel> favouritemodel = [];
