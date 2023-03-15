import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/home_screen.dart';
import 'recomendations.dart';
import 'foods.dart';
import 'home_banner.dart';
import 'icon_info.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeBanner(), 
            IconInfo(),
            Foods(),
            Recomendations()
          ],
        ),
      ),
    );
  }
}