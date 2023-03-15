import 'package:flutter/material.dart';
import 'package:restaurant_app/models/model_%20recomendation.dart';
import 'recomendation_card.dart';

class Recomendations extends StatelessWidget {
  const Recomendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recomendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
              physics: ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    List.generate(clientRecomendationList.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: RecomendetionCard(
                      recomendation: clientRecomendationList[index],
                    ),
                  );
                }),
              ))
        ],
      ),
    );
  }
}
