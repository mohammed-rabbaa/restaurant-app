import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        info(title: 'Address:', text: 'Station Street 5'),
        info(title: 'City:', text: 'Makkah'),
        info(title: 'Country:', text: 'Saudi Arabia'),
        info(title: 'Email:', text: 'email@website.com'),
        info(title: 'Mobile:', text: '+966 51 234 5678'),
        info(title: 'Website:', text: 'my@website.com'),
      ],
    );
  }

  Padding info({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
