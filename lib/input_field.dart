import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.isShowPassword,
    required this.labelText,
    this.autofocus = false,
    this.contentPadding = const EdgeInsets.only(left: 21),
    this.prefixIcon,
    this.suffixIcon,
    this.onIconPressed,
    this.style,
  });

  final bool isShowPassword;
  final String labelText;
  final bool autofocus;
  final EdgeInsets contentPadding;
  final VoidCallback? onIconPressed;
  final Widget? prefixIcon;
  final Icon? suffixIcon;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autofocus,
      obscureText: isShowPassword,
      style: style,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        contentPadding: contentPadding,
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
        suffixIcon: suffixIcon == null
            ? null
            : Padding(
                padding: const EdgeInsets.only(right: 12, top: 5, bottom: 5),
                child: IconButton(
                  icon: suffixIcon!,
                  onPressed: onIconPressed,
                ),
              ),
      ),
    );
  }
}
