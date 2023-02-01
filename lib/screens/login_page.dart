import 'package:flutter/material.dart';
import 'package:info_dom/blocs/login/login_bloc.dart';
import 'package:info_dom/screens/home/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.lightBlueAccent,
      Colors.lightBlue,
      Colors.blue,
      Colors.blueAccent,
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(gradient: gradient),
        padding: const EdgeInsets.all(30),
        child: SafeArea(
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return Column(
                children: [
                  const Expanded(
                    flex: 2,
                    child:
                        Icon(Icons.handshake, size: 100, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      labelText: 'Adresse email',
                      icon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: (state as LoginInitial).isObscure,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      icon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: state.isObscure
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        onPressed: () =>
                            context.read<LoginBloc>().add(TogglePassword()),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: const Text('Connexion'),
                    ),
                  ),
                  const Spacer(flex: 2)
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
