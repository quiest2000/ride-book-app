import 'package:flutter/material.dart';
import 'package:ride_book_app/input_field.dart';

class PhoneSection extends StatelessWidget {
  const PhoneSection({super.key});

  @override
  Widget build(BuildContext context) {
    const double spaceSize = 7;
    const double errorTextSize = 10;
    const double errorTextHeigh = 2;

    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 330,
          height: 50,
          child: InputField(
            icon: Icon(
              Icons.check_circle_rounded,
              color: Color(0xff49E46B),
            ),
            isShowPassword: false,
            labelText: '',
            onIconPressed: null,
          ),
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
