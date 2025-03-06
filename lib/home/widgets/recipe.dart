
import 'dart:ui';

import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
    final String name;
    final String imageUrl;
    const Recipe({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildAvatarInfo(),
          _buildRecipeImage(),
          _buildName(),
          _buildCategory(),
        ],
      ),
    );
  }

  Widget _buildCategory() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Text(
            "SeadFood",
            style: TextStyle(
              fontSize: 15,
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

  Widget _buildAvatarInfo() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: SizedBox(
            height: 42.0,
            width: 42.0,
            child: Image.network(
              fit: BoxFit.fill,
              'https://images.pexels.com/photos/590478/pexels-photo-590478.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Bela',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

Widget _buildRecipeImage() {
  return Padding(
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
          top: 25,
          right: 25,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 0, sigmaY: 0), // Desenfoque aplicado
            child: Icon(
              Icons.favorite_border, // Icono sin relleno
              color: Colors.white,
              size: 24.0,
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget _buildName(){
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
