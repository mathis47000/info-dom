import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:info_dom/screens/login_page.dart';

void main() {
  runApp(const MyApp());
  // orientation portrait only
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info Dom',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // color text button
        useMaterial3: true,
        //define color for material 3 from one color
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue).copyWith(
          secondary: Colors.white,
          background: Colors.lightBlue,
        ),
        //app bar style
        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
          centerTitle: true,
        ),
        // bottom navigation bar color
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
        //style text field
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          iconColor: Colors.white,
          suffixIconColor: Colors.white,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginPage(),
    );
  }
}
