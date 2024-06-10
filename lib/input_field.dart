import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.icon,
    required this.isShowPassword,
    required this.labelText,
    this.leftContentPadding = 21,
    this.autofocus = false,
    this.onIconPressed,
  });

  final Icon icon;
  final bool isShowPassword;
  final String labelText;
  final bool autofocus;
  final double leftContentPadding;
  final VoidCallback? onIconPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: autofocus,
      obscureText: isShowPassword,
      decoration: InputDecoration(
        prefixIcon: SizedBox(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 7),
              Image.asset('assets/united-states.png', width: 30, height: 30),
              const SizedBox(width: 7),
              Image.asset(
                'assets/arrow-down.png',
              ),
              const SizedBox(width: 7),
              const VerticalDivider(
                color: Color(0xffb4b4b4),
                width: 1,
                indent: 12,
                endIndent: 12,
              ),
            ],
          ),
        ),
        contentPadding: EdgeInsets.only(left: leftContentPadding),
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
