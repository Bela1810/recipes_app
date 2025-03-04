
import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildAvatarInfo(),
          SizedBox(height: 12),
          _buildRecipeImage()
        ],
      ),
    );
  }

  Widget _buildAvatarInfo(){
    return Row(
      children: [
        SizedBox(
          height: 42.0,
          width: 42.0,
          child: Image.network('https://img.freepik.com/vector-premium/icono-perfil-simple-color-blanco-icono_1076610-50204.jpg'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('Belitaa'),
        ),
      ],
    );
  }

  Widget _buildRecipeImage(){
    return Expanded(
      child : SizedBox(
        height: 250,
        child: Image.network('https://www.themealdb.com/images/media/meals/llcbn01574260722.jpg/medium',
        fit: BoxFit.cover)

      )
      );
  }





}
