// 「投稿者」を表すクラス
class Author {
  final String name;
  final String avatorUrl;

  Author({this.name, this.avatorUrl});

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      name: json["id"],
      avatorUrl: json["profile_image_url"],
    );
  }
}
