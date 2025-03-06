
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
        childAspectRatio: 0.6,
        children: [
          Recipe(
            name: "Spaguetti",
            imageUrl: 'https://www.themealdb.com/images/media/meals/llcbn01574260722.jpg/medium',
          ),
          Recipe(
            name: "Baked Salmon",
            imageUrl: "https://www.themealdb.com/images/media/meals/1548772327.jpg",
          ),
          Recipe(
            name: "Fish tacos",
            imageUrl: "https://www.themealdb.com/images/media/meals/uvuyxu1503067369.jpg",
          ),
          Recipe(
            name: "Honey Salmon",
            imageUrl: "https://www.themealdb.com/images/media/meals/xxyupu1468262513.jpg",
          ),
        ],
      )),
    );
  }

}