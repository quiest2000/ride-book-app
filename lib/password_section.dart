import 'package:flutter/material.dart';
import 'package:ride_book_app/input_field.dart';

class PasswordSection extends StatefulWidget {
  const PasswordSection({super.key});

  @override
  State<PasswordSection> createState() => _PasswordSectionState();
}

class _PasswordSectionState extends State<PasswordSection> {
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    final iconData =
        isShowPassword ? Icons.visibility : Icons.visibility_off_outlined;
    return SizedBox(
      width: 330,
      height: 50,
      child: InputField(
        icon: Icon(iconData),
        isShowPassword: isShowPassword,
        labelText: 'Password',
        onIconPressed: () {
          setState(() {
            isShowPassword = !isShowPassword;
          });
        },
      ),
    );
  }
}
