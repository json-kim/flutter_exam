import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_exam/data/fake_data.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key}) : super(key: key);

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
      children: [
        Container(
          constraints: BoxConstraints(
              minHeight: 100,
              maxHeight: MediaQuery.of(context).size.height / 9),
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      hintText: 'search...',
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Row(children: [
                  ThemeButton(theme: 'food'),
                  ThemeButton(theme: 'animal'),
                  ThemeButton(theme: 'trip'),
                  ThemeButton(theme: 'fashion'),
                ]),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            child: StaggeredGridView.countBuilder(
              itemCount: 30,
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              itemBuilder: (context, idx) => Image.network(
                photoUrls[idx % 4],
                fit: BoxFit.cover,
              ),
              staggeredTileBuilder: (idx) =>
                  (idx % 6 == 0 || (idx - 4) % 6 == 0)
                      ? StaggeredTile.count(2, 2)
                      : StaggeredTile.count(1, 1),
            ),
          ),
        )
      ],
    );
  }
}

class ThemeButton extends StatelessWidget {
  final String theme;

  const ThemeButton({
    this.theme,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.withOpacity(0.8))),
          alignment: Alignment.center,
          child: Text(theme),
        ),
      ),
    );
  }
}
