import 'package:flutter/material.dart';

import 'components/search_bar.dart';
import 'components/search_result_box.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: const [
        //TODO: 서치 바
        SearchBar(),
        //TODO: 검색 결과 그리드 박스
        SearchResultBox()
      ],
    );
  }
}
