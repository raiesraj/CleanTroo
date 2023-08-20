import 'package:cleantro/Provider/homepage_provider.dart';
import 'package:cleantro/Provider/permisson_handler.dart';
import 'package:cleantro/Provider/wash_and_fold_provider.dart';
import 'package:cleantro/Screens/home_page.dart';
import 'package:cleantro/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Bottom_navigation.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>LocationProvider(),),
        ChangeNotifierProvider(create: (_)=> LocationPermissionProvider()..checkLocationPermission()),
        ChangeNotifierProvider(create: (_)=> WashAndFoldProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: BottomNavBar(),
      ),
    );

  }
}

