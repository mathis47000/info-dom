import 'package:flutter/material.dart';

class HabitViewPage extends StatelessWidget {
  const HabitViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habitude de vie'),
      ),
      body: Card(
        // long text example
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam'),
        ),
      ),
    );
  }
}
