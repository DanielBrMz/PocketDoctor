import 'package:flutter/material.dart';
import 'package:pocket_doctor/main_layout.dart';
import 'package:pocket_doctor/screens/auth_page.dart';
import 'package:pocket_doctor/utils/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // this if for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // define ThemeData here
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Pocket Doctor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // pre-define input decoration
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primayColor,
          border: Config.outlineBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlineBorder,
          floatingLabelStyle: TextStyle(color: Config.primayColor),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primayColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      initialRoute: '/',
      routes: {
        // this is initial route of the app
        // which is auth page (login an and sign up)
        '/': (context) => const AuthPage(),
        // this is for main layout after login
        'main': (context) => const MainLayout()
      },
    );
  }
}
