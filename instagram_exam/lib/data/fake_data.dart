import 'package:instagram_exam/model/account.dart';
import 'package:instagram_exam/model/post.dart';

const String myAccountId = 'myAccountId';

final List<String> photoUrls = [
  'https://cdn.pixabay.com/photo/2017/07/28/00/57/bank-2547356_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/11/29/13/49/christmas-baubles-1869989_960_720.jpg',
  'https://cdn.pixabay.com/photo/2019/12/11/19/38/christmas-4689129_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543_960_720.jpg',
];

final myAccount = MyAccount(
  accountId: 'myAccountId',
  fullName: 'Rudolph',
  nickName: 'deer',
  profileImgUrl:
      'https://cdn.pixabay.com/photo/2013/11/28/11/28/christmas-220169_1280.jpg',
);

final List<OtherAccount> accList = [
  OtherAccount(
      accountId: 'dsfasdfas',
      fullName: 'Mr.Santa',
      nickName: 'Santa',
      profileImgUrl:
          'https://cdn.pixabay.com/photo/2021/11/22/16/50/santa-claus-6816883_960_720.jpg',
      isLive: true),
  OtherAccount(
    accountId: 'dsfasdfas',
    fullName: 'Mr.Santa',
    nickName: 'Santa',
    profileImgUrl:
        'https://cdn.pixabay.com/photo/2017/12/01/20/03/santa-claus-2991653_1280.png',
  ),
  OtherAccount(
    accountId: 'postingUserId',
    fullName: 'Santa Clause',
    nickName: 'Santa',
    profileImgUrl:
        'https://cdn.pixabay.com/photo/2016/12/18/10/03/let-it-snow-1915324_960_720.png',
  ),
  OtherAccount(
    accountId: 'dsfasdfas',
    fullName: 'Mr.Santa',
    nickName: 'Santa',
    profileImgUrl:
        'https://cdn.pixabay.com/photo/2020/12/29/10/11/santa-claus-5870093_1280.jpg',
  ),
];

final List<Post> postList = [
  Post(
    postId: '12345',
    postingAccountId: 'postingUserId',
    title: 'Merry Christmas',
    contents:
        'Christmas is an annual festival commemorating the birth of Jesus Christ, observed primarily on December 25, as a religious and cultural celebration among billions of people around the world.',
    updateTime: 'update 10 minutes before',
    tagList: [],
    photoUrls: [
      'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/09/10/09/38/christmas-3666644_960_720.jpg',
      'https://cdn.pixabay.com/photo/2021/11/12/09/07/advent-6788404_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/12/04/21/22/snowman-1882635_960_720.jpg',
    ],
  ),
  Post(
    postId: '12346',
    postingAccountId: 'postingUserId',
    title: 'Merry Christmas',
    contents:
        'Christmas is an annual festival commemorating the birth of Jesus Christ, observed primarily on December 25, as a religious and cultural celebration among billions of people around the world.',
    updateTime: 'update 10 minutes before',
    tagList: [],
    photoUrls: [
      'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/09/10/09/38/christmas-3666644_960_720.jpg',
      'https://cdn.pixabay.com/photo/2021/11/12/09/07/advent-6788404_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/12/04/21/22/snowman-1882635_960_720.jpg',
    ],
  ),
  Post(
    postId: '12347',
    postingAccountId: 'postingUserId',
    title: 'Merry Christmas',
    contents:
        'Christmas is an annual festival commemorating the birth of Jesus Christ, observed primarily on December 25, as a religious and cultural celebration among billions of people around the world.',
    updateTime: 'update 10 minutes before',
    tagList: [],
    photoUrls: [
      'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/09/10/09/38/christmas-3666644_960_720.jpg',
      'https://cdn.pixabay.com/photo/2021/11/12/09/07/advent-6788404_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/12/04/21/22/snowman-1882635_960_720.jpg',
    ],
  ),
];
