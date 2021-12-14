import 'package:flutter/material.dart';

import 'subject_card.dart';

class SubjectList extends StatelessWidget {
  const SubjectList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SubjectCard(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 32),
              child: Container(
                width: 1,
                height: double.infinity,
                color: Colors.grey.withOpacity(0.6),
              ),
            ),
            const SubjectCard(),
            const SubjectCard(),
            const SubjectCard(),
            const SubjectCard(),
          ],
        ),
      ),
    );
  }
}
