import 'package:flutter/material.dart';
import 'package:instagram_exam/data/fake_data.dart';
import 'package:instagram_exam/model/account.dart';

class PostCardHeader extends StatelessWidget {
  final String postingAccountId;

  const PostCardHeader({
    this.postingAccountId,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Account account =
        accList.firstWhere((acc) => acc.accountId == postingAccountId);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(account.profileImgUrl),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(account.fullName),
                  Text(
                    account.nickName,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}
