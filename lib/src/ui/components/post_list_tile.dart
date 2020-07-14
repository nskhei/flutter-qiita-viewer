import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../logic/model/post.dart';
import '../../router.dart';
import 'avator.dart';

class PostListTile extends StatelessWidget {
  final Post post;

  const PostListTile({
    Key key,
    @required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(post.title),
        subtitle: Text(
            "by ${post.author.name}   LGTM ${post.likesCount}    最終更新日 ${post.updatedAt.substring(0, 10)}"),
        leading: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Avator(avatorUrl: post.author.avatorUrl),
        ),
        onTap: () => openPostDetailPage(context, post.url),
      ),
    );
  }
}
