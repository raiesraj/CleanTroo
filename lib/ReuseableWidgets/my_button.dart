import 'package:cleantro/Utility/media_qurrey.dart';
import 'package:flutter/material.dart';

import '../Utility/app_color.dart';
import 'button_text.dart';
class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: context.scrWidth * 0.5,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors().kBtnBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: const ButtonText(
          text: "Let's start",
        ),
      ),
    );
  }
}
