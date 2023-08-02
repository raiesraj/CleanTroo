import 'package:cleantro/Utility/app_images.dart';
import 'package:flutter/material.dart';
import '../ReuseableWidgets/my_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages().splashScreen,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: MyButton(),
            ),
          ),
        ],
      ),
    );
  }
}

