import 'package:meta/meta.dart';

class Topic {
  final String title;
  final String tagName;

  Topic({
    @required this.title,
    @required this.tagName,
  });
}

final List<Topic> topics = [
  Topic(
    title: "パソナテック",
    tagName: "qiita夏祭り2020_パソナテック",
  ),
  Topic(
    title: "freeeAPI",
    tagName: "qiita夏祭り2020_freee",
  ),
  Topic(
    title: "DataRobot",
    tagName: "qiita夏祭り2020_datarobot",
  ),
  Topic(
    title: "Qiita",
    tagName: "qiita夏祭り2020_qiita",
  ),
  Topic(
    title: "QiitaTeam",
    tagName: "qiita夏祭り2020_qiita_team",
  ),
];
