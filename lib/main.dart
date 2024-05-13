import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vitti_heritage_app/firebase_options.dart';
import 'package:vitti_heritage_app/navgation/tabBarNavigation.dart';
import 'package:vitti_heritage_app/screens/home/home.dart';
import 'package:vitti_heritage_app/screens/login/login.dart';
import 'package:vitti_heritage_app/screens/login/phone.dart';
import 'package:vitti_heritage_app/screens/login/signUp.dart';
import 'package:vitti_heritage_app/screens/onboarding/onboarding.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(SafeArea(
    child: GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: "flutter demo",
      home: Login(),
    ),
  ));
}
