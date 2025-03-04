
import 'package:flutter/material.dart';
import 'package:recipes/home/widgets/recipe.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
        crossAxisCount: 2,
        children: [
          Recipe(),
          Recipe(),
          Recipe(),
          Recipe(),
          Recipe(),
          Recipe()
        ],
      )),
    );
  }

}