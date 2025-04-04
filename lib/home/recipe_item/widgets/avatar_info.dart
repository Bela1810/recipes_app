

import 'package:flutter/material.dart';

class AvatarInfo extends StatelessWidget {
  const AvatarInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: SizedBox(
            height: 42.0,
            width: 42.0,
            child: Image.network(
              fit: BoxFit.fill,
              'https://writestylesonline.com/wp-content/uploads/2018/11/Three-Statistics-That-Will-Make-You-Rethink-Your-Professional-Profile-Picture.jpg',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Bela',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,  /** */
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}