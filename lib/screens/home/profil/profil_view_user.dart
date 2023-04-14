import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/style/style.dart';
import 'package:info_dom/widgets/datail_user_widget/personal_widget.dart';

class ProfilViewUser extends StatelessWidget {
  final User user;
  const ProfilViewUser({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            padding: padding,
            child: Column(
              children: [
                PersonalWidget(
                  user: user,
                ),
                const Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.admin_panel_settings_outlined),
                    ),
                    title: Text('Administrateur'),
                    subtitle: Text('...'),
                  ),
                ),
                const Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.settings),
                    ),
                    title: Text('Paramètres'),
                    subtitle: Text('...'),
                  ),
                ),
                const Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.plus_one),
                    ),
                    title: Text('Tuile supplémentaire'),
                    subtitle: Text('...'),
                  ),
                ),
              ],
            )));
  }
}
