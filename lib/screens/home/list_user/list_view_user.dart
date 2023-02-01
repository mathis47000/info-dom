import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/screens/home/list_user/detail_view_user.dart';

class ListViewUser extends StatelessWidget {
  const ListViewUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: User.getUsers().map<Widget>((user) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(user.getName[0]),
              ),
              title: Text(user.getName),
              subtitle: Text(user.getEmail),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                //navigate to detail view
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailViewUser(user: user),
                    ));
              },
            ),
          );
        }).toList(
          growable: false,
        ),
      ),
    );
  }
}
