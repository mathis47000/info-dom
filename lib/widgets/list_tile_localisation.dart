import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:info_dom/style/style.dart';
import 'package:map_launcher/map_launcher.dart';

class ListTileLocalisation extends StatelessWidget {
  const ListTileLocalisation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(Icons.pin_drop),
          ),
          title: const Text('Localisation'),
          subtitle: const Text('51 rue de la paix, 75000 Paris'),
          trailing: trailingCard,
          onTap: () => {
                _openMap(context),
              }),
    );
  }

  void _openMap(context) async {
    try {
      final coords = Coords(37.759392, -122.5107336);
      const title = "Ocean Beach";
      final availableMaps = await MapLauncher.installedMaps;

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Wrap(
                children: <Widget>[
                  for (var map in availableMaps)
                    ListTile(
                      onTap: () => map.showMarker(
                        coords: coords,
                        title: title,
                      ),
                      title: Text(map.mapName),
                      leading: SvgPicture.asset(
                        map.icon,
                        width: 36.0,
                        height: 36.0,
                      ),
                    )
                ],
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
