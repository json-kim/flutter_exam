import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Instagram',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send_outlined),
              color: Colors.black,
            ),
          ],
        ),
        body: _buildBody(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.movie_creation_outlined,
                color: Colors.black,
              ),
              label: 'movie',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              label: 'shop',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 12,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2021/11/22/16/50/santa-claus-6816883_960_720.jpg'),
              ),
              label: 'profile',
            ),
          ],
        ));
  }

  Widget _buildBody() {
    return ListView(
      children: [
        ProfileList(),
        PhotoCard(),
        PhotoCard(),
        PhotoCard(),
      ],
    );
  }
}

class PhotoCard extends StatelessWidget {
  const PhotoCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Divider(
              height: 0, color: Colors.grey.withOpacity(0.5), thickness: 1.5),
          PostCardHeader(),
          PostCardPhoto(),
          PostCardPhotoBar(),
          PhotoCardComment(),
        ],
      ),
    );
  }
}

class PhotoCardComment extends StatelessWidget {
  const PhotoCardComment({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Merry Christmas',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
              'Christmas is an annual festival commemorating the birth of Jesus Christ, observed primarily on December 25, as a religious and cultural celebration among billions of people around the world.'),
          SizedBox(height: 5),
          Text(
            'update 10 minutes before',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class PostCardPhotoBar extends StatelessWidget {
  const PostCardPhotoBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat_bubble_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send_outlined),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark_border),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(backgroundColor: Colors.blue, radius: 3),
                SizedBox(width: 4),
                CircleAvatar(backgroundColor: Colors.black26, radius: 3),
                SizedBox(width: 4),
                CircleAvatar(backgroundColor: Colors.black26, radius: 3),
                SizedBox(width: 4),
                CircleAvatar(backgroundColor: Colors.black26, radius: 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PostCardPhoto extends StatelessWidget {
  const PostCardPhoto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Image.network(
        'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

class PostCardHeader extends StatelessWidget {
  const PostCardHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/12/18/10/03/let-it-snow-1915324_960_720.png'),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Santa Claus'),
                  Text(
                    'Santa',
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

class ProfileList extends StatelessWidget {
  const ProfileList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProfileCard(),
          ProfileCard(),
          ProfileCard(),
          ProfileCard(),
          ProfileCard(),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
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
                    'https://cdn.pixabay.com/photo/2021/11/22/16/50/santa-claus-6816883_960_720.jpg',
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
          Text('Mr. Santa'),
        ],
      ),
    );
  }
}
