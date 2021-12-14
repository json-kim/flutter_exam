import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PostCardPhoto extends StatelessWidget {
  final List<String> photoUrls;
  final ValueChanged<int> setIndex;

  const PostCardPhoto({
    required this.photoUrls,
    required this.setIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        aspectRatio: 1.5,
        onPageChanged: (idx, _) => setIndex(idx),
      ),
      items: photoUrls
          .map((url) => Image.network(url, fit: BoxFit.cover))
          .toList(),
    );
  }
}
