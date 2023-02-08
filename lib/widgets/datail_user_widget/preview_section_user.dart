import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';

class PreviewSectionUser extends StatelessWidget {
  const PreviewSectionUser({
    super.key,
    required this.user,
  });
  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.info_outline,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Informations complémentaires",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 10,
                runSpacing: 5,
                children: [
                  FilterChip(
                    label: const Text("Escalier"),
                    selected: false,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Ascenseur"),
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Téléassistance"),
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Cahier de liaison"),
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                ],
              ),
            ),
            const Divider(
              height: 16,
            ),
            Row(
              children: [
                const Icon(
                  Icons.key_outlined,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Accès",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 10,
                runSpacing: 5,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  FilterChip(
                    label: const Text("Digicode"),
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Code : 1234"),
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Interphone"),
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                ],
              ),
            ),
            const Divider(
              height: 16,
            ),
            Row(
              children: [
                const Icon(
                  Icons.pets_outlined,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Animaux",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 10,
                runSpacing: 5,
                children: [
                  FilterChip(
                    label: const Text("Chat"),
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Chien"),
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Oiseau"),
                    selected: false,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Rongeur"),
                    selected: false,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Autre"),
                    selected: false,
                    onSelected: (bool value) {},
                  ),
                ],
              ),
            ),
            const Divider(
              height: 16,
            ),
            Row(
              children: [
                const Icon(
                  Icons.fireplace_outlined,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chauffage",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 10,
                runSpacing: 5,
                children: [
                  FilterChip(
                    label: const Text("Bois"),
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Gaz"),
                    selected: false,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Fioul"),
                    selected: false,
                    onSelected: (bool value) {},
                  ),
                  FilterChip(
                    label: const Text("Electrique"),
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
