import 'package:flutter/material.dart';

class PostCardPhoto extends StatelessWidget {
  final List<String> photoUrls;
  final PageController _pageController = PageController(initialPage: 0);
  final Function setIndex;

  PostCardPhoto({
    this.photoUrls,
    this.setIndex,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() => setIndex(_pageController.page.round()));
    return Container(
      constraints: BoxConstraints(
        minHeight: 100,
        maxHeight: 300,
      ),
      child: PageView(
        controller: _pageController,
        children: photoUrls
            .map((url) => Image.network(
                  url,
                  fit: BoxFit.cover,
                ))
            .toList(),
      ),
    );
  }
}
