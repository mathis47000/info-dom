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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //style text field
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
