import 'package:flutter/material.dart';
import 'package:restaurant_app/models/model_food.dart';
import 'package:restaurant_app/responsive.dart';

import 'food_card.dart';

class Foods extends StatelessWidget {
  const Foods({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'The best foods',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 20,
          ),
          Responsive(
            desktop: builderGridView(
              itemCount: foodList.length,
              crossAxisCount: 3,
              childAspectRatio: 0.8,
              itemBuilder: (context, index) => FoodCard(
                foodCard: foodList[index],
              ),
            ),
            tablet: builderGridView(
              itemCount: foodList.length,
              crossAxisCount: MediaQuery.of(context).size.width < 900 ? 3 : 2,
              childAspectRatio: 0.8,
              itemBuilder: (context, index) => FoodCard(
                foodCard: foodList[index],
              ),
            ),
            mobileLarge: builderGridView(
              itemCount: foodList.length,
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              itemBuilder: (context, index) => FoodCard(
                foodCard: foodList[index],
              ),
            ),
            mobile: builderGridView(
              itemCount: foodList.length,
              crossAxisCount: 1,
              childAspectRatio: 0.8,
              itemBuilder: (context, index) => FoodCard(
                foodCard: foodList[index],
              ),
            ),
          )
        ],
      ),
    );
  }

  GridView builderGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
