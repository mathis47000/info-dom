import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/widgets/personal_widget.dart';

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
            const SizedBox(
              height: 20,
            ),
            Flex(direction: Axis.horizontal, children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Edit"),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Delete"),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
