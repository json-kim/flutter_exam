import 'package:flutter/material.dart';
import 'package:instagram_exam/screen/login/login_screen.dart';

import 'components/account_info_box.dart';
import 'components/album_box.dart';
import 'components/album_tabbar.dart';
import 'components/subject_list.dart';

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
      body: _buildBody(),
    );
  }

  Column _buildBody() {
    return Column(
      children: [
        //TODO: 계정정보 박스
        const AccountInfoBox(),
        //TODO: 주제 리스트
        const SubjectList(),
        Divider(height: 0, color: Colors.grey.withOpacity(0.5), thickness: 1),
        //TODO: 앨범 탭바
        const AlbumTabBar(),
        //TODO: 마이 앨범 박스
        const AlbumBox()
      ],
    );
  }
}
