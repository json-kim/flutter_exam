import 'package:flutter/material.dart';
import 'package:instagram_exam/model/account.dart';

import 'components/photo_slide.dart';

class ShortScreen extends StatelessWidget {
  final Account account;

  const ShortScreen({
    required this.account,
    Key? key,
  }) : super(key: key);

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
            child: PhotoSlide(account: account),
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.top * 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(const CircleBorder()),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(10)),
                        side: MaterialStateProperty.all(
                            const BorderSide(width: 0.5, color: Colors.white)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () {},
                    child: const Icon(Icons.camera_alt),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.white),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const TextField(
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
