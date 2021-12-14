import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final IconData iconData;
  String? amount;

  ActionButton({
    required this.iconData,
    this.amount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Icon(
            iconData,
            size: 36,
            color: Colors.white,
          ),
          const SizedBox(height: 8),
          if (amount != null)
            Text(
              amount ?? '',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
        ],
      ),
    );
  }
}
