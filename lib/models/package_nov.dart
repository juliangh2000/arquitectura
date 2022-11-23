import 'dart:convert';

List<PackageNovedad> packageFromJson(String str) => List<PackageNovedad>.from(json.decode(str).map((x) => PackageNovedad.fromJson(x)));

String packageToJson(List<PackageNovedad> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PackageNovedad {
  PackageNovedad({
    required this.name
  });

  final String name;
  

  factory PackageNovedad.fromJson(Map<String, dynamic> json) => PackageNovedad(
    name: json["name"],
 
  );

  Map<String, dynamic> toJson() => {
    "name": name,

  };
}
