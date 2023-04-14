import 'package:flutter/material.dart';
import 'package:info_dom/style/style.dart';

class HabitPage extends StatelessWidget {
  const HabitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habitude de vie'),
      ),
      body: const Padding(
        padding: padding,
        child: Card(
          // long text example
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam tincidunt, nunc nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec auctor, nisl eget aliquam'),
          ),
        ),
      ),
    );
  }
}
