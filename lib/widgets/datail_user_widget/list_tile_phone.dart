import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/style/style.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ListTilePhone extends StatelessWidget {
  final User user;
  const ListTilePhone({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(Icons.phone),
          ),
          title: const Text('Téléphone'),
          //make a space every 2 digits
          subtitle: Text(user.getPhoneNumber
              .replaceAllMapped(RegExp(r'(\d{2})'), (Match m) => '${m[1]} ')),
          trailing: trailingCard,
          onTap: () => {
                _openPhone(user.getPhoneNumber),
              }),
    );
  }

  Future<void> _openPhone(phone) async {
    await launchUrlString("tel://$phone");
  }
}
