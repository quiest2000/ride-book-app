import 'package:flutter/material.dart';
import 'package:ride_book_app/country_section.dart';
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
                autofocus: true,
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff13142e),
                ),
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
