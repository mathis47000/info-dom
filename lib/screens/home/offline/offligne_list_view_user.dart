import 'package:flutter/material.dart';

class OfflineListViewUser extends StatelessWidget {
  const OfflineListViewUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Cliquer sur le bouton : '),
            Icon(Icons.cloud_download_outlined),
            Text('pour télécharger les données depuis un profile'),
          ],
        ),
      ),
    );
  }
}
