import 'package:flutter/material.dart';

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
      child: TextField(
        obscureText: isShowPassword,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 21),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffb4b4b4),
            ),
            borderRadius: BorderRadius.all(Radius.circular(8)),
            gapPadding: 4,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            gapPadding: 4,
          ),
          labelText: 'Password',
          labelStyle: const TextStyle(
            fontFamily: 'Popins',
            fontSize: 14,
            color: Color(0xffb4b4b4),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 12, top: 5, bottom: 5),
            child: IconButton(
              icon: Icon(iconData),
              // padding: const EdgeInsets.only(right: 21),
              onPressed: () {
                setState(() {
                  isShowPassword = !isShowPassword;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
