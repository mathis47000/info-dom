import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/style/style.dart';
import 'package:info_dom/widgets/list_tile_localisation.dart';
import 'package:info_dom/widgets/personal_widget.dart';
import 'package:map_launcher/map_launcher.dart';

class DetailViewUser extends StatelessWidget {
  final User user;
  const DetailViewUser({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.getName),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            PersonalWidget(user: user),
            const ListTileLocalisation(),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.phone),
                ),
                title: Text('Téléphone'),
                subtitle: Text('06 00 00 00 00'),
                trailing: trailingCard,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
