import 'package:flutter/material.dart';
import 'package:restaurant_app/responsive.dart';

import '../../models/model_food.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.foodCard,
  });
  final ModelFood foodCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[50],
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image(
              image: AssetImage(foodCard.imageFood),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    foodCard.nameFood,
                    style: const TextStyle(color: Colors.black, height: 2),
                  ),
                  subtitle: Text(
                    foodCard.description,
                    maxLines: Responsive.isMobile(context) ? 3 : 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
