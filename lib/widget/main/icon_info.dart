import 'package:flutter/material.dart';
import 'package:restaurant_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
      child: Responsive.isMobile(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: iconInfo(
                        context: context,
                        icon: Icons.supervisor_account,
                        colorIcon: Colors.blue,
                        text: '188+',
                        label: 'Clients',
                      ),
                    ),
                    Expanded(
                      child: iconInfo(
                        context: context,
                        icon: Icons.location_on,
                        colorIcon: Colors.red.shade700,
                        text: '10+',
                        label: 'Branches',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: iconInfo(
                        context: context,
                        icon: Icons.food_bank_rounded,
                        colorIcon: Colors.green.shade600,
                        text: '20+',
                        label: 'Meals',
                      ),
                    ),
                    Expanded(
                      child: iconInfo(
                        context: context,
                        icon: Icons.star,
                        colorIcon: Colors.amber,
                        text: '100k+',
                        label: 'Stars',
                      ),
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: iconInfo(
                    context: context,
                    icon: Icons.supervisor_account,
                    colorIcon: Colors.blue,
                    text: '188+',
                    label: 'Clients',
                  ),
                ),
                Expanded(
                  child: iconInfo(
                    context: context,
                    icon: Icons.location_on,
                    colorIcon: Colors.red.shade700,
                    text: '10+',
                    label: 'Branches',
                  ),
                ),
                Expanded(
                  child: iconInfo(
                    context: context,
                    icon: Icons.food_bank_rounded,
                    colorIcon: Colors.green.shade600,
                    text: '20+',
                    label: 'Meals',
                  ),
                ),
                Expanded(
                  child: iconInfo(
                    context: context,
                    icon: Icons.star,
                    colorIcon: Colors.amber,
                    text: '100k+',
                    label: 'Stars',
                  ),
                ),
              ],
            ),
    );
  }

  Column iconInfo(
      {required BuildContext context,
      required IconData icon,
      required String text,
      required String label,
      required Color colorIcon}) {
    return Column(
      children: [
        Icon(
          icon,
          size: 75,
          color: colorIcon,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.headline6!.copyWith(
              color: const Color.fromARGB(255, 5, 43, 112), fontSize: 30),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
