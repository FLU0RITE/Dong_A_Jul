class Clublist {
  List<Club> list = [];

  Clublist({required this.list});
}

class Club {
  String? name;
  String? image;
  String? tag;
  String? oneline;
  String? category;

  Club({this.name, this.image, this.tag, this.oneline, this.category});

  Club.fromJson(Map<String, dynamic> json) {
    // json -> clubs class
    name = json['name'];
    image = json['image'];
    tag = json['tag'];
    oneline = json['oneline'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    // clubs class -> json
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['tag'] = tag;
    data['oneline'] = oneline;
    data['category'] = category;
    return data;
  }
}
