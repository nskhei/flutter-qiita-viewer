import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ui/pages/post_detail_page.dart';

Future<void> openPostDetailPage(BuildContext context, String url) async {
  if (kIsWeb || Platform.isMacOS) {
    launch(url);
  } else {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => PostDetailPage(url: url)),
    );
  }
}
