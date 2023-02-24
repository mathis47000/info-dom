import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/screens/home/list_user/detail_view_user.dart';
import 'package:info_dom/services/navigation.dart';
import 'package:info_dom/style/style.dart';

class ListViewUser extends StatelessWidget {
  const ListViewUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: padding,
      itemCount: User.getUsers().length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/${User.getUsers()[index].getPictureName}'),
            ),
            title: Text(User.getUsers()[index].getName),
            subtitle: Text(User.getUsers()[index].getAddress),
            trailing: trailingCard,
            onTap: () {
              navigationWithAnimation(
                  context, DetailViewUser(user: User.getUsers()[index]));
            },
          ),
        );
      },
    );
  }
}
