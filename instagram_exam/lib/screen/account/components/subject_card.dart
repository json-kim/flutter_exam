import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  const SubjectCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: Colors.grey.withOpacity(0.8), width: 0.5),
        ),
        alignment: Alignment.center,
        child: const CircleAvatar(
          radius: 36,
          backgroundImage: NetworkImage(
              'https://cdn.pixabay.com/photo/2020/07/22/07/04/design-5428296_1280.png'),
        ),
      ),
    );
  }
}
