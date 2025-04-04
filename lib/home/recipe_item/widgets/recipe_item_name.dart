import 'package:flutter/material.dart';

class RecipeItemName extends StatelessWidget {
  const RecipeItemName({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(
        name,
        style: TextStyle(fontSize: 22.0, color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold
        ),
      )
    );
  }
}