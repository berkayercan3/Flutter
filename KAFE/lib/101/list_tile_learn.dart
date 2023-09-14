import 'package:flutter/material.dart';
import 'package:kafe/core/random_image.dart';

class ListTitle extends StatelessWidget {
  const ListTitle ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                //title: const Text('My Card'),
                title:  const RandomImage(),
                onTap: () {},
                subtitle: const Text('How  do you use your card'),
                minVerticalPadding: 0,
                dense: true,
                leading: Container(height: 200, width: 30, alignment: Alignment.topCenter, child: const Icon(Icons.money),
                ),
                trailing: const SizedBox(width:20, child: Icon(Icons.chevron_right)),
              ),
            ),
          )
        ],
        ),
      ),
    );
  }
}
