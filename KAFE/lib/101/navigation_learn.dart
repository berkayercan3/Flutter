//sayfalar(widgetler) arası data transferi yaptığımız yer
//push,popup,pop

import 'package:flutter/material.dart';
import 'package:kafe/101/image_learn.dart';
import 'package:kafe/101/padding_learn.dart';
import 'package:kafe/Demos/my_collections_demos.dart';

import 'navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index) {
    setState(() {
      selectedItems.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async{
              final response = await navigateToWidgetNormal<bool>(
                  context, const NavigateLearn());

              if (response == true) {
                addSelected(index);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Placeholder(
                  color:  selectedItems.contains(index) ? Colors.green : Colors.red
              ),
            ),
          );
        },
      ),
      floatingActionButton: SizedBox(
        width: 100,
        height: 100,
        child: FloatingActionButton(
          child: const Text('Button'),
          onPressed: () async {

          },
        ),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true,
      settings: const RouteSettings(),
    ));
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true,
      settings: const RouteSettings(),

    ));
  }
}
