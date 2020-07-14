import 'package:flutter/material.dart';

import '../../topics.dart';
import '../components/post_list_view.dart';
import '../components/refresh_button.dart';

final _tabs = topics.map((t) => Tab(child: Text(t.title))).toList();

final _tabContents =
    topics.map((t) => PostListView(tagName: t.tagName)).toList();

class PostListPage extends StatefulWidget {
  @override
  _PostListPageState createState() => _PostListPageState();
}

class _PostListPageState extends State<PostListPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(title: const Text("Qiita 夏祭り 2020")),
        floatingActionButton: const RefreshButton(),
        body: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1000),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const _TabSection(),
                    Expanded(child: const _PostListSection()),
                    const _FooterSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TabSection extends StatelessWidget {
  const _TabSection();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: null,
          child: Container(height: 3.0, color: Colors.grey[300]),
        ),
        TabBar(
          tabs: _tabs,
          indicatorWeight: 3.0,
          unselectedLabelColor: Colors.grey,
          isScrollable: MediaQuery.of(context).size.width < 500,
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 2),
        ),
      ],
    );
  }
}

class _PostListSection extends StatelessWidget {
  const _PostListSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      child: TabBarView(
        children: _tabContents,
      ),
    );
  }
}

class _FooterSection extends StatelessWidget {
  const _FooterSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.info_outline),
          color: Colors.grey[700],
          tooltip: "ライセンス情報",
          onPressed: () {
            showLicensePage(context: context);
          },
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.code),
          color: Colors.grey[700],
          tooltip: "ソースコード",
          onPressed: () {},
        ),
      ],
    );
  }
}
