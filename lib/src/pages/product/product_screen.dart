import 'package:flutter/material.dart';
import 'package:quitanda_virtual/src/config/custom_colors.dart';
import 'package:quitanda_virtual/src/models/item_model.dart';
import 'package:quitanda_virtual/src/services/utils_services.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({required this.item, super.key});

  final ItemModel item;
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),

      body: Column(
        children: [
          Expanded(child: Image.asset(item.image)),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade900, offset: Offset(0, 2)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          item.itemName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(height: 30, width: 70, color: Colors.red),
                    ],
                  ),
                  Text(
                    utilsServices.priceToCurrency(item.price),
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.customSwatchColor),
                    
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
