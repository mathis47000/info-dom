import 'package:flutter/material.dart';

class ListViewUser extends StatelessWidget {
  const ListViewUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = [
      {'name': 'John Doe', 'email': '12:00 - 14:00'},
      {'name': 'John Doe', 'email': 'mathis@outlook.fr'},
      {'name': 'John Doe', 'email': 'mathis@outlook.fr'},
      {'name': 'John Doe', 'email': 'mathis@outlook.fr'},
      {'name': 'John Doe', 'email': 'mathis@outlook.fr'},
      {'name': 'John Doe', 'email': 'mathis@outlook.fr'},
      {'name': 'John Doe', 'email': 'mathis@outlook.fr'},
      {'name': 'John Doe', 'email': 'mathis@outlook.fr'},
      {'name': 'John Doe', 'email': 'mathis@outlook.fr'},
      {'name': 'John Doe', 'email': 'mathis@outlook.fr'},
    ];
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: user.map<Widget>((user) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(user['name']!),
              subtitle: Text(user['email']!),
            ),
          );
        }).toList(
          growable: false,
        ),
      ),
    );
  }
}
