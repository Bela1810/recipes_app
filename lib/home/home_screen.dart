
import 'package:flutter/material.dart';
import 'package:recipes/home/recipe_item/recipe_item.dart';

class HomeScreen extends StatefulWidget{

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final bool x = false;

  final List<bool> _favorites = List.generate(4, (index) => false);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child : Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            children: List.generate(
              4, 
              (index){
              return   RecipeItem(
                name: "Spaguetti",
                imageUrl: 'https://www.themealdb.com/images/media/meals/llcbn01574260722.jpg/medium',
                isFavorite: _favorites[index],
                onFavoriteTap:() {
                  setState(() {
                    _favorites[index] = !_favorites[index];
                  });
                } ,
              );

            }
          )
        ),
      )
    )
  );
  }
}