import 'package:cleantro/Provider/wash_and_fold_provider.dart';
import 'package:cleantro/Utility/app_color.dart';
import 'package:cleantro/Utility/app_images.dart';
import 'package:cleantro/Utility/sizedbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DryCleanScreen extends StatelessWidget {
  const DryCleanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WashAndFoldProvider washAndFoldProvider =
        Provider.of<WashAndFoldProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.height,
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: AppColors().locationCardBorderColor,
                          )),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Icon(
                            CupertinoIcons.back,
                            color: AppColors().locationTextColor,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColors().locationCardBorderColor,
                        )),
                    child: Center(
                      child: Icon(
                        Icons.more_vert,
                        color: AppColors().locationTextColor,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 35),
            child: Text(
              "My Bucket",
              style: GoogleFonts.lato(
                  fontSize: 24,
                  color: AppColors().locationTextColor,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: CustomExpansionTile(
              title: Text(
                "Dry Clean",
                style: GoogleFonts.lato(
                    fontSize: 16, color: AppColors().locationTextColor),
              ),
              content: Column(
                children: [
                  WashAndFoldItems(
                    title: "Shirts",
                    counter: washAndFoldProvider.shirtCount.toString(),
                    image: AppImages().tShirtImage,
                    color: AppColors().tShirtBgColor,
                  ),
                  WashAndFoldItems(
                    title: "T Shirts",
                    counter: washAndFoldProvider.tShirtCount.toString(),
                    image: AppImages().tShirtImage,
                    color: AppColors().tShirtBgColor,
                  ),
                  WashAndFoldItems(
                    title: "T Shirts",
                    counter: washAndFoldProvider.jacketCount.toString(),
                    image: AppImages().tShirtImage,
                    color: AppColors().tShirtBgColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WashAndFoldItems extends StatelessWidget {
  final String counter;
  final String image;
  final Color color;
  final String title;
  const WashAndFoldItems({
    super.key,
    required this.counter,
    required this.image,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    WashAndFoldProvider washAndFoldProvider =
        Provider.of<WashAndFoldProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsetsDirectional.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(18),
                ),
                height: 60,
                width: 60,
                child: Center(
                  child: Image.asset(
                    image,
                    height: 45,
                  ),
                ),
              ),
              20.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors().locationTextColor),
                  ),
                  10.height,
                  Row(
                    children: [
                      CounterButton(
                        icon: Icons.add,
                        iconColor: Colors.white,
                        color: AppColors().locationTextColor,
                      ),
                      10.width,
                      CounterText(counter: counter),
                      10.width,
                      CounterButton(
                        border: Border.all(
                          color: AppColors().locationTextColor,
                        ),
                        icon: CupertinoIcons.minus,
                        iconColor: AppColors().locationTextColor,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Text(
                      "\$2/item",
                      style: GoogleFonts.lato(fontSize: 15, color: Colors.grey),
                    ),
                    10.height,
                    Text(
                      "\$16.00",
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          color: AppColors().priceTextColor,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({
    super.key,
    required this.counter,
  });

  final String counter;

  @override
  Widget build(BuildContext context) {
    return Text(counter);
  }
}

class CounterButton extends StatelessWidget {
  final Color? color;
  final Border? border;
  final IconData? icon;
  final Color? iconColor;

  const CounterButton({
    super.key,
    this.color,
    this.icon,
    this.border,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: AppColors().locationTextColor,
          width: 1,
        ),
        shape: BoxShape.rectangle,
      ),
      child: Center(child: Icon(icon, size: 16, color: iconColor)),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  final Widget title;
  final Widget content;
  final bool initiallyExpanded;

  CustomExpansionTile({
    required this.title,
    required this.content,
    this.initiallyExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors().locationCardColor,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: AppColors().locationCardBorderColor,
          width: 1,
        ), // Rounded corners
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: ExpansionTile(
          title: title,
          initiallyExpanded: initiallyExpanded,
          children: [
            Container(
              width: 10,
              height: 2,
              color: Colors.black,
            ),
            content,
          ],
        ),
      ),
    );
  }
}
