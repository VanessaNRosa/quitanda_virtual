import 'package:flutter/material.dart';
import 'package:quitanda_virtual/src/config/custom_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      //App Bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Green",
                style: TextStyle(
                  color: CustomColors.customSwatchColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              TextSpan(
                text: "grocer",
                style: TextStyle(
                  color: CustomColors.customContrastColor,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.shopping_cart, color: CustomColors.customSwatchColor,))
        ],
      ),

      //Pesquisa
      //Categorias
      //Grid
    );
  }
}
