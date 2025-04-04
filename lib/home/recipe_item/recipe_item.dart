

import 'package:flutter/material.dart';
import 'package:recipes/home/recipe_item/widgets/avatar_info.dart';
import 'package:recipes/home/recipe_item/widgets/recipe_item_category.dart';
import 'package:recipes/home/recipe_item/widgets/recipe_item_image.dart';
import 'package:recipes/home/recipe_item/widgets/recipe_item_name.dart';

class RecipeItem extends StatelessWidget {
    final String name;
    final String imageUrl;
    final bool isFavorite;
    final VoidCallback onFavoriteTap;

    const RecipeItem({
      super.key, 
      required this.name, 
      required this.imageUrl, 
      required this.isFavorite, 
      required this.onFavoriteTap
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AvatarInfo(),
          RecipeItemImage(
            imageUrl: imageUrl, 
            isFavorite: isFavorite, 
            onFavoriteTap: onFavoriteTap
            ),
          RecipeItemName(name: name),
          RecipeItemCategory(),
        ],
      ),
    );
  }
}


