import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme.dart';
import 'ui/pages/post_list_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: "Qiita夏祭り2020",
        theme: theme,
        home: PostListPage(),
      ),
    );
  }
}
