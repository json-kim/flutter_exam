import 'package:flutter/material.dart';

import 'components/photo_slide.dart';

class ShortScreen extends StatelessWidget {
  const ShortScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top * 2,
          ),
          Expanded(
            child: PhotoSlide(),
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.top * 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(CircleBorder()),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        side: MaterialStateProperty.all(
                            BorderSide(width: 0.5, color: Colors.white)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () {},
                    child: Icon(Icons.camera_alt),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.white),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: 'Envoyer message',
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                          suffixIcon:
                              Icon(Icons.more_horiz, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
