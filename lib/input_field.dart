import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.icon,
    required this.isShowPassword,
    required this.onIconPressed,
    required this.labelText,
  });

  final Icon icon;
  final bool isShowPassword;
  final String labelText;

  final VoidCallback? onIconPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
        labelText: labelText,
        labelStyle: const TextStyle(
          fontFamily: 'PlusJakartaSans',
          fontSize: 14,
          color: Color(0xffb4b4b4),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 12, top: 5, bottom: 5),
          child: IconButton(
            icon: icon,
            onPressed: onIconPressed,
          ),
        ),
      ),
    );
  }
}
