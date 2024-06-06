import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Welcom back!',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 26,
                fontWeight: FontWeight.w800, // 800 extra bold
                color: Color(0xff13142e),
              ),
            ),
            Text('Enter your creditional to continue!'),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.grey),
              child: SizedBox(width: 300, height: 150, child: Text('Image')),
            ),
            PhoneSection(),
            PasswordSection(),
            ElevatedButton(
              onPressed: null,
              child: Text('Login'),
            ),
            SignupSection(),
          ],
        ),
      ),
    );
  }
}

class PhoneSection extends StatelessWidget {
  const PhoneSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.yellow),
          child: SizedBox(width: 300, height: 50, child: Text('Image')),
        ),
        Text('Invalid phone number or password'),
      ],
    );
  }
}

class PasswordSection extends StatelessWidget {
  const PasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.green.shade600),
          child: const SizedBox(width: 300, height: 50, child: Text('Image')),
        ),
        const Text('Forgot password'),
      ],
    );
  }
}

class SignupSection extends StatelessWidget {
  const SignupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Don’t have an account? Sign up');
  }
}
