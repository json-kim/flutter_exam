import 'package:flutter/material.dart';

class AccountInfoBox extends StatelessWidget {
  const AccountInfoBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // 프로필 아바타
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.purple,
                          Colors.pink,
                          Colors.orange,
                        ],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        radius: 47,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2013/11/28/11/28/christmas-220169_1280.jpg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(children: [
                    // 포스트, 팔로워, 팔로잉
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '334',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text('posts', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '211K',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text('followers', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '134',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text('following', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ],
                    ),
                    //TODO: 버튼(메시지, 계정, 드랍다운)
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(
                                'Message',
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          flex: 1,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Icon(
                                Icons.person_add,
                                color: Colors.black,
                              )),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          flex: 1,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                  ]),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          // 풀네임
          const Text(
            'Rudolph Deer',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          //설명
          const Text(
            'This is Rudolph\'s account.',
            style: TextStyle(fontSize: 16),
          ),
          //웹 사이트 링크
          InkWell(
            onTap: () {},
            child: const Text(
              'https://naver.com',
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
