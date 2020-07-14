import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/controller/post_list_controller.dart';
import '../../topics.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: "再読み込み",
      child: const Icon(Icons.refresh, color: Colors.white),
      onPressed: () {
        final currentTabIndex = DefaultTabController.of(context).index;
        final tagName = topics[currentTabIndex].tagName;
        postListProvider(tagName).read(context).fetch();
      },
    );
  }
}
