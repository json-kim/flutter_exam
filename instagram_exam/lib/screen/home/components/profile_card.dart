import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String profileImgUrl;

  const ProfileCard({
    this.name,
    this.profileImgUrl,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 70,
                height: 70,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    profileImgUrl,
                  ),
                ),
              ),
              Positioned(
                bottom: -5,
                right: -5,
                child: Container(
                  alignment: Alignment.center,
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(width: 3, color: Colors.white)),
                  child: Icon(
                    Icons.add,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(name),
        ],
      ),
    );
  }
}
