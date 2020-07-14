import './author.dart';

// Qiitaの「投稿」を表すクラス
class Post {
  final String title;
  final String url;
  final int likesCount;
  final String updatedAt;
  final Author author;

  Post({this.title, this.url, this.likesCount, this.updatedAt, this.author});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json["title"],
      url: json["url"],
      likesCount: json["likes_count"],
      updatedAt: json["updated_at"],
      author: Author.fromJson(json["user"]),
    );
  }
}
