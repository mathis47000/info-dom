import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:info_dom/blocs/login/login_bloc.dart';
import 'package:info_dom/screens/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:info_dom/style/style.dart';

void main() {
  runApp(const MyApp());
  // orientation portrait only
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Info\'s Dom',
        debugShowCheckedModeBanner: false,
        theme: themeData,
        home: const LoginPage(),
      ),
    );
  }
}
