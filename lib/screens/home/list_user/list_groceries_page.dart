import 'package:flutter/material.dart';

class ListGroceriesPage extends StatelessWidget {
  const ListGroceriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des courses'),
      ),
      body: const Center(
        child: Text('Liste des courses'),
      ),
    );
  }
}
