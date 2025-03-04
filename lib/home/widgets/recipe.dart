
import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Column(
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text('Bela'),
        ),
      ],
    );
  }

  Widget _buildRecipeImage(){
    return Expanded(
      child: Image.network(
        'https://img.hellofresh.com/w_3840,q_auto,f_auto,c_fill,fl_lossy/hellofresh_website/es/cms/SEO/recipes/albondigas-caseras-de-cerdo-con-salsa-barbacoa.jpeg',
        fit: BoxFit.cover)
      );
  }





}
