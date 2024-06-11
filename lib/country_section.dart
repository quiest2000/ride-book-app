import 'package:flutter/material.dart';

class CountrySection extends StatelessWidget {
  const CountrySection({super.key});

  @override
  Widget build(BuildContext context) {
    const double spaceSize = 15;

    return SizedBox(
      width: 100, // must be greater than entire row width
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: spaceSize),
          Image.asset('assets/united-states.png', width: 30, height: 30),
          const SizedBox(width: spaceSize),
          Image.asset(
            'assets/arrow-down.png',
          ),
          const SizedBox(width: spaceSize),
          const VerticalDivider(
            color: Color(0xffb4b4b4),
            width: 1,
            indent: 12,
            endIndent: 12,
          ),
        ],
      ),
    );
  }
}
