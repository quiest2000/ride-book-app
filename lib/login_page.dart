import 'package:flutter/material.dart';

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

class PhoneSection extends StatelessWidget {
  const PhoneSection({super.key});

  @override
  Widget build(BuildContext context) {
    const double spaceSize = 7;
    const double errorTextSize = 10;
    const double errorTextHeigh = 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
        ),
        const Padding(
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
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
              children: [
                Expanded(
                  child: TextField(
                    obscureText: isShowPassword,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  onTap: () {
                    print('Show password');
                    setState(() {
                      isShowPassword = !isShowPassword;
                    });
                  },
                  child: Icon(
                    iconData,
                    color: const Color(0xff1d1d1d),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: () {
            print('Forgot password');
          },
          child: const Text(
            'Forgot your password?',
            style: TextStyle(
              fontFamily: 'Popins',
              fontSize: 10,
              color: Colors.black,
            ),
          ),
        ),
      ],
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
