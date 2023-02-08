import 'package:flutter/material.dart';
import 'package:info_dom/blocs/login/login_bloc.dart';
import 'package:info_dom/screens/home/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:info_dom/style/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  Expanded(
                    flex: 1,
                    //display the logo.png
                    child: Center(
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        //from the ThemeData
                        child: const Image(
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                    decoration: const InputDecoration(
                      labelText: 'Adresse email',
                      icon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: (state as LoginInitial).isObscure,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                    decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      icon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: state.isObscure
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
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
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: const Text('Connexion'),
                    ),
                  ),
                  const Spacer(flex: 1)
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
