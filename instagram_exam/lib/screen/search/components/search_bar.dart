import 'package:flutter/material.dart';

import 'theme_button.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minHeight: 100, maxHeight: MediaQuery.of(context).size.height / 9),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            //TODO: 테마 버튼 바
            Row(children: const [
              ThemeButton(theme: 'food'),
              ThemeButton(theme: 'animal'),
              ThemeButton(theme: 'trip'),
              ThemeButton(theme: 'fashion'),
            ]),
          ],
        ),
      ),
    );
  }
}
