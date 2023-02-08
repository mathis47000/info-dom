import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/screens/home/list_user/detail_view_user.dart';
import 'package:info_dom/style/style.dart';

class ListViewUser extends StatelessWidget {
  const ListViewUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: User.getUsers().length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(User.getUsers()[index].getName[0]),
              ),
              title: Text(User.getUsers()[index].getName),
              subtitle: Text(User.getUsers()[index].getAddress),
              trailing: trailingCard,
              onTap: () {
                //navigate to detail view with animation right to left
                _navigationDetail(context, User.getUsers()[index]);
              },
            ),
          );
        },
      ),
    );
  }

  void _navigationDetail(BuildContext context, User user) {
    Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              DetailViewUser(user: user),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = const Offset(1.0, 0.0);
            var end = Offset.zero;
            var curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ));
  }
}
