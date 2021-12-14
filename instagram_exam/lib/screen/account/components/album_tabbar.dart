import 'package:flutter/material.dart';

class AlbumTabBar extends StatelessWidget {
  const AlbumTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.apps))),
        Expanded(
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.list))),
        Expanded(
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.account_box_outlined))),
      ],
    );
  }
}
