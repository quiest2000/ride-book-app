import 'package:flutter/material.dart';
import 'package:ride_book_app/input_field.dart';

class PhoneSection extends StatelessWidget {
  const PhoneSection({super.key});

  @override
  Widget build(BuildContext context) {
    const double errorTextSize = 10;
    const double errorTextHeigh = 2;

    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              width: 330,
              height: 50,
              child: InputField(
                prefixIcon: CountrySection(),
                suffixIcon: Icon(
                  Icons.check_circle_rounded,
                  color: Color(0xff49E46B),
                ),
                isShowPassword: false,
                labelText: '',
                contentPadding: EdgeInsets.only(left: 95),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 12),
          child: SizedBox(
            // must be wrapped by SizedBox to preserved the height
            height: errorTextSize * errorTextHeigh,
            child: Text(
              'Invalid phone number or password',
              style: TextStyle(
                color: Color(0xffFF0000),
                fontSize: errorTextSize,
                fontFamily: 'Popins',
                height: errorTextHeigh,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

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
