import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Goals extends StatelessWidget {
  const Goals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text('Goals'),
        ),
        goals(text: 'Improve new revenue streams'),
        goals(text: 'Improve your top-selling items'),
        goals(text: 'Test new menu items'),
        goals(text: 'Test service charges'),
      ],
    );
  }

  Padding goals({required String text}) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/check.svg'),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
  }
}
