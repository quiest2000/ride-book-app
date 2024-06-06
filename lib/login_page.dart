import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
            Text(
              'Enter your creditional to continue!',
              style: TextStyle(
                fontFamily: 'PlusJakartaSans',
                fontSize: 14,
                color: Color(0xffb4b4b4),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.grey),
              child: SizedBox(
                width: 330,
                height: 135,
                child: Center(child: Text('IMAGE')),
              ),
            ),
            SizedBox(
              height: 28,
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
    const double spaceSize = 7;

    return Container(
      width: 330,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffb4b4b4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 21, right: 21),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/united-states.png', width: 30, height: 30),
            const SizedBox(width: spaceSize),
            Image.asset(
              'assets/arrow-down.png',
            ),
            const SizedBox(width: spaceSize),
            const VerticalDivider(
              color: Color(0xffb4b4b4),
              width: 2,
              indent: 12,
              endIndent: 12,
            ),
            const SizedBox(width: spaceSize),
            Expanded(
              child: TextField(
                controller: TextEditingController(),
                decoration: const InputDecoration(
                  hintText: 'Phone number',
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 18,
                  fontWeight: FontWeight.w700, // 700 extra bold
                  color: Color(0xff13142e),
                ),
              ),
            ),
            const Icon(
              Icons.check_circle_rounded,
              color: Color(0xff49E46B),
            ),
          ],
        ),
      ),
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
          child: const SizedBox(width: 330, height: 50, child: Text('Image')),
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
