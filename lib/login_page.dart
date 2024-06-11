import 'package:flutter/material.dart';
import 'package:ride_book_app/password_section.dart';
import 'package:ride_book_app/phone_section.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Spacer(
                flex: 75,
              ),
              const Text(
                'Welcom back!',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 26,
                  fontWeight: FontWeight.w800, // 800 extra bold
                  color: Color(0xff13142e),
                ),
              ),
              const Text(
                'Enter your creditional to continue!',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 14,
                  color: Color(0xffb4b4b4),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
                child: SizedBox(
                  width: 330,
                  height: 135,
                  child: Center(child: Text('IMAGE')),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const PhoneSection(),
              const SizedBox(height: 10,),
              const PasswordSection(),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  print('Login');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.onPrimary,
                  ),
                  minimumSize: MaterialStateProperty.all(const Size(330, 50)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                child:
                    const Text('Login', style: TextStyle(color: Colors.black)),
              ),
              const Spacer(
                flex: 158,
              ),
              const SignupSection(),
            ],
          ),
        ),
      ),
    );
  }
}
class SignupSection extends StatelessWidget {
  const SignupSection({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.onPrimary;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don’t have an account? ',
          style: TextStyle(
            fontFamily: 'Popins',
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            print('Sign up');
          },
          child: Text(
            'Sign up',
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
