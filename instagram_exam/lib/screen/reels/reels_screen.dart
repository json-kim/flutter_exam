import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/reels_card.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        highlightElevation: 0,
        onPressed: () {},
        child: const Icon(
          Icons.camera_alt_outlined,
          size: 32,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Listener(
      onPointerMove: (PointerMoveEvent event) {
        if (event.delta.dy > 1) {
          setState(() {
            show = true;
          });
        } else if (event.delta.dy < -1) {
          setState(() {
            show = false;
          });
        }
      },
      child: Stack(
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            children: [
              ReelsCard(),
              ReelsCard(),
              ReelsCard(),
              ReelsCard(),
            ],
          ),
          TitleBar(show: show),
        ],
      ),
    );
  }
}

class TitleBar extends StatelessWidget {
  final bool show;
  const TitleBar({
    required this.show,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: AnimatedSlide(
          offset: show ? Offset(0, 0) : Offset(0, -3),
          duration: const Duration(milliseconds: 400),
          child: Row(
            children: const [
              Text(
                'Reels',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
