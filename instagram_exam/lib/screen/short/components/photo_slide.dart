import 'package:flutter/material.dart';
import 'package:instagram_exam/data/fake_data.dart';

class PhotoSlide extends StatefulWidget {
  const PhotoSlide({Key key}) : super(key: key);

  @override
  _PhotoSlideState createState() => _PhotoSlideState();
}

class _PhotoSlideState extends State<PhotoSlide>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  AnimationController _animationController;
  Animation<double> _animation;
  int _index = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });

    nextPhoto();
    super.initState();
  }

  void nextPhoto() {
    _animationController.forward().whenComplete(() {
      if (_index >= photoUrls.length - 1) {
        return;
      }
      _index++;
      movePage(_index);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void movePage(int index) {
    _pageController.animateToPage(index,
        curve: Curves.easeIn, duration: Duration(milliseconds: 300));
  }

  void onPageChanged(int index) {
    _index = index;
    _animationController.reset();
    nextPhoto();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: PageView(
            onPageChanged: onPageChanged,
            controller: _pageController,
            children: photoUrls
                .map(
                  (url) => Image.network(
                    url,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
          ),
        ),
        Positioned(
          top: 20,
          right: 0,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              size: 32,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 10,
          right: 10,
          height: 2,
          child: LayoutBuilder(
            builder: (context, constraints) => Stack(
              children: [
                Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  color: Colors.white.withOpacity(0.3),
                ),
                Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth * _animationController.value,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}