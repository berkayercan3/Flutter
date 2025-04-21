import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  final String name =
      'Veli';
  final ProjectKeys keys = ProjectKeys();
  final String? userName;

  TextLearnView({super.key, this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
            CupertinoButton(child: const Text('button'), onPressed: () {}),
             Text(
            'Berkay $name \n name lenght:${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 35,
                wordSpacing: 2,
                decoration:TextDecoration.underline,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                color: Colors.blue,
                fontWeight: FontWeight.w600
                ),
          ),
          Text(
            'Berkay $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: ProjectStyles
                .welcomeStyle,
          ),
          Text(
            'Berkay $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(userName ?? ''),
          Text(keys.welcome),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      fontSize: 35,
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      letterSpacing: 2,
      color: Colors.blue,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
