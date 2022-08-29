import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "WeChat",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Row(
          children: const [
            Icon(
              Icons.add_circle_rounded,
              size: 30,
            ),
            Icon(
              Icons.more_vert_outlined,
              size: 30,
            )
          ],
        )
      ],
    );
  }
}
