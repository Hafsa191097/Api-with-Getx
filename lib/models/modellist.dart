
import 'dart:convert';

List<Images> imagesFromJson(String str) => List<Images>.from(json.decode(str).map((x) => Images.fromJson(x)));

String imagesToJson(List<Images> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Images {
    final String name;
    final String avatar;
    final bool isfav;
    final String id;

    Images({
        required this.name,
        required this.avatar,
        required this.isfav,
        required this.id,
    });

    Images copyWith({
        String? name,
        String? avatar,
        bool? isfav,
        String? id,
    }) => 
        Images(
            name: name ?? this.name,
            avatar: avatar ?? this.avatar,
            isfav: isfav ?? this.isfav,
            id: id ?? this.id,
        );

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        name: json["name"],
        avatar: json["avatar"],
        isfav: json["isfav"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "avatar": avatar,
        "isfav": isfav,
        "id": id,
    };
}
