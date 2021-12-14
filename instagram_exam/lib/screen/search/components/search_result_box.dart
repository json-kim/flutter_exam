import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_exam/data/fake_data.dart';

class SearchResultBox extends StatelessWidget {
  const SearchResultBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
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
          staggeredTileBuilder: (idx) => (idx % 6 == 0 || (idx - 4) % 6 == 0)
              ? const StaggeredTile.count(2, 2)
              : const StaggeredTile.count(1, 1),
        ),
      ),
    );
  }
}
