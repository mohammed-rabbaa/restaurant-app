import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Spacer(
              flex: 2,
            ),
            Image(
              image: AssetImage('assets/images/logo_restaurant.png'),
              width: 175,
            ),
            Text(
              'Food is what extends life and \nincreases the hormone of happiness',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
