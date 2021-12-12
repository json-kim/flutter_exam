import 'package:flutter/material.dart';
import 'package:instagram_exam/model/account.dart';
import 'package:instagram_exam/screen/short/short_screen.dart';

class ProfileCard extends StatelessWidget {
  final Account account;

  const ProfileCard({
    this.account,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShortScreen(account: account),
            ),
          );
        },
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: account is OtherAccount
                        ? LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.purple,
                              Colors.pink,
                              Colors.orange,
                            ],
                          )
                        : null,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 33,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        account.profileImgUrl,
                      ),
                    ),
                  ),
                ),
                if (account is MyAccount)
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
                if (account.isLive)
                  Positioned(
                    bottom: -5,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 30,
                        height: 15,
                        color: Colors.pink,
                        child: Center(
                          child: Text(
                            'LIVE',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
            SizedBox(height: 5),
            Text(account.fullName),
          ],
        ),
      ),
    );
  }
}
