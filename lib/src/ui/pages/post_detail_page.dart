import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class PostDetailPage extends StatelessWidget {
  final String url;

  const PostDetailPage({
    Key key,
    @required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      appBar: AppBar(
        title: const Text("Qiita 夏祭り 2020 記事"),
      ),
    );
  }
}
