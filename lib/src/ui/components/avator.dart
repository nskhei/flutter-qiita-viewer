import 'package:flutter/material.dart';

class Avator extends StatelessWidget {
  final String avatorUrl;

  const Avator({
    Key key,
    @required this.avatorUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey[300],
      backgroundImage: NetworkImage(avatorUrl),
      onBackgroundImageError: (e, stack) {},
    );
  }
}
