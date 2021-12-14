import 'package:flutter/material.dart';
import 'package:instagram_exam/data/fake_data.dart';
import 'package:instagram_exam/screen/home/components/profile_card.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProfileCard(
            account: myAccount,
          ),
          ...accList.map((acc) => ProfileCard(account: acc)).toList()
        ],
      ),
    );
  }
}
