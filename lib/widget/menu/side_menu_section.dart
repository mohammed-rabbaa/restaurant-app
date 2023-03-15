import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'contact_info.dart';
import 'goals.dart';
import 'logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContactInfo(),
                      Divider(),
                      Goals(),
                      Divider(),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/download.svg'),
                              const SizedBox(width: 10),
                              Text(
                                'Download Brochure',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset('assets/icons/dribble.svg'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('assets/icons/github.svg'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset('assets/icons/linkedin.svg'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset('assets/icons/twitter.svg'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
