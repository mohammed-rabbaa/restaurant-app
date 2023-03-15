import 'package:flutter/material.dart';
import '../../models/model_ recomendation.dart';

class RecomendetionCard extends StatelessWidget {
  const RecomendetionCard({super.key, required this.recomendation});
  final ModelRecomendation recomendation;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(20),
      color: Theme.of(context).canvasColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recomendation.image),
            ),
            title: Text(recomendation.name),
            subtitle: Text(
              recomendation.job,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            recomendation.text,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
