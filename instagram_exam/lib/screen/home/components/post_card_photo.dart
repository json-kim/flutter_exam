import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PostCardPhoto extends StatelessWidget {
  final List<String> photoUrls;
  final PageController _pageController = PageController(initialPage: 0);
  final ValueChanged<int> setIndex;

  PostCardPhoto({
    this.photoUrls,
    this.setIndex,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // _pageController.addListener(() => setIndex(_pageController.page.round()));
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          aspectRatio: 1.5,
          onPageChanged: (idx, _) => setIndex(idx),
        ),
        items: photoUrls
            .map((url) => Image.network(url, fit: BoxFit.cover))
            .toList(),
      ),
    );
  }
}
