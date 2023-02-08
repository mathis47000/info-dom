import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/style/style.dart';
import 'package:map_launcher/map_launcher.dart';

class ListTileLocalisation extends StatelessWidget {
  final User user;
  const ListTileLocalisation({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(Icons.pin_drop),
          ),
          title: const Text('Localisation'),
          subtitle: Text(user.getAddress),
          trailing: trailingCard,
          onTap: () => {
                _openMap(context),
              }),
    );
  }

  void _openMap(context) async {
    try {
      final coords = Coords(user.getLatitude, user.getLongitude);
      final title = user.getAddress;
      final availableMaps = await MapLauncher.installedMaps;

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                child: Wrap(
                  children: <Widget>[
                    for (var map in availableMaps)
                      ListTile(
                        onTap: () => map.showDirections(
                          destination: coords,
                          destinationTitle: title,
                        ),
                        title: Text(map.mapName),
                        leading: SvgPicture.asset(
                          map.icon,
                          width: 36.0,
                          height: 36.0,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }
}
