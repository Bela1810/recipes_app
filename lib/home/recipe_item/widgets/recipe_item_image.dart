
import 'dart:ui';

import 'package:flutter/material.dart';

class RecipeItemImage extends StatelessWidget {

  final String imageUrl;
  final bool isFavorite;
  final VoidCallback onFavoriteTap;


  const RecipeItemImage({
    super.key,
    required this.imageUrl, 
    required this.isFavorite, 
    required this.onFavoriteTap,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFavoriteTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.6, right: 4),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 18,
              right: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_outline,
                      color: Colors.white,
                      size: 24.0,
                    ),
      
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}