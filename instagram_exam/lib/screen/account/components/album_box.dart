import 'package:flutter/material.dart';

class AlbumBox extends StatelessWidget {
  const AlbumBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      children: List.generate(
          10,
          (idx) => Image.network(
                'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
                fit: BoxFit.cover,
              )),
    ));
  }
}
