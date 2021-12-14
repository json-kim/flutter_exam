import 'package:flutter/material.dart';

import 'action_button.dart';

class ReelsCard extends StatelessWidget {
  const ReelsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          child: Image.network(
            'https://cdn.pixabay.com/photo/2021/12/07/12/35/church-6853164_1280.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //TODO: 프로필바
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2021/12/07/12/35/church-6853164_1280.jpg'),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'babylover622',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        const SizedBox(width: 8),
                        OutlinedButton(
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                  const BorderSide(color: Colors.white))),
                          onPressed: () {},
                          child: const Text(
                            '팔로우',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    //TODO: 텍스트 콘텐츠
                    const Text(
                      'Wow!! so Nice 😍😍',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    //TODO: 뮤직 바
                    Row(
                      children: const [
                        Icon(
                          Icons.music_note_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          'horseehouse • 원본 오디오',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //TODO: 액션 바
                  ActionButton(
                    iconData: Icons.favorite_border,
                    amount: '23.8만',
                  ),
                  ActionButton(
                    iconData: Icons.mode_comment_outlined,
                    amount: '1,246',
                  ),
                  ActionButton(iconData: Icons.send_outlined),
                  ActionButton(iconData: Icons.more_vert_outlined),
                  Column(children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2021/12/07/12/35/church-6853164_1280.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
