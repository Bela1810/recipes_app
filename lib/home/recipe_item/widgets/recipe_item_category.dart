import 'package:flutter/material.dart';

class RecipeItemCategory extends StatelessWidget {
  const RecipeItemCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Text(
            "SeadFood",
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF9FA5C0),
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "  ●  ",
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF9FA5C0),
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            ">60 mins",
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF9FA5C0),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}