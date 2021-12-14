import 'package:flutter/material.dart';
import 'package:instagram_exam/screen/login/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rudolph',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              )),
        ],
      ),
      body: Column(
        children: [
          Padding(
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('posts', style: TextStyle(fontSize: 14)),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    '211K',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('followers',
                                      style: TextStyle(fontSize: 14)),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text(
                                    '134',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('following',
                                      style: TextStyle(fontSize: 14)),
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
                //TODO: 주제 리스트
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SubjectCard(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 32),
                          child: Container(
                            width: 1,
                            height: double.infinity,
                            color: Colors.grey.withOpacity(0.6),
                          ),
                        ),
                        const SubjectCard(),
                        const SubjectCard(),
                        const SubjectCard(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 0, color: Colors.grey.withOpacity(0.5), thickness: 1),
          //TODO: 탭바
          Row(
            children: [
              Expanded(
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.apps))),
              Expanded(
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.list))),
              Expanded(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.account_box_outlined))),
            ],
          ),
          //TODO: 마이 앨범
          Expanded(
              child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 1,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            children: [
              Image.network(
                'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
                fit: BoxFit.cover,
              ),
            ],
          ))
        ],
      ),
    );
  }
}

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
