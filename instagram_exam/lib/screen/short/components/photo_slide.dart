import 'package:flutter/material.dart';
import 'package:instagram_exam/data/fake_data.dart';
import 'package:instagram_exam/model/account.dart';

class PhotoSlide extends StatefulWidget {
  final Account account;

  const PhotoSlide({
    required this.account,
    Key? key,
  }) : super(key: key);

  @override
  _PhotoSlideState createState() => _PhotoSlideState();
}

class _PhotoSlideState extends State<PhotoSlide>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _animation;
  int _index = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
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
        curve: Curves.easeIn, duration: const Duration(milliseconds: 300));
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
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        widget.account.profileImgUrl,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Text(widget.account.fullName,
                      style: const TextStyle(color: Colors.white)),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    '14h',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            ],
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
