import 'dart:convert';

class ImageModel {
  int id;
  String title;
  String thumbnailUrl;
  String url;
  ImageModel({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.url,
  });

  ImageModel copyWith({
    int? id,
    String? title,
    String? thumbnailUrl,
    String? url,
  }) {
    return ImageModel(
      id: id ?? this.id,
      title: title ?? this.title,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'title': title});
    result.addAll({'thumbnailUrl': thumbnailUrl});
    result.addAll({'url': url});

    return result;
  }

  factory ImageModel.fromMap(Map<String, dynamic> map) {
    return ImageModel(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      thumbnailUrl: map['thumbnailUrl'] ?? '',
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageModel.fromJson(String source) =>
      ImageModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ImageModel(id: $id, title: $title, thumbnailUrl: $thumbnailUrl, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageModel &&
        other.id == id &&
        other.title == title &&
        other.thumbnailUrl == thumbnailUrl &&
        other.url == url;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ thumbnailUrl.hashCode ^ url.hashCode;
  }
}
