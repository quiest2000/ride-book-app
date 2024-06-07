import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:ride_book_app/login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (x) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/vector.svg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
              ),
              SvgPicture.asset('assets/greeting.svg'),
              const SizedBox(height: 30.3),
              Center(
                child: Image.asset('assets/welcome.png'),
              ),
              LottieBuilder.asset(
                'assets/animations/loading.json',
                animate: true,
                repeat: true,
                width: 100,
                height: 100,
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
