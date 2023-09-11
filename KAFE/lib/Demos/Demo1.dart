import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kafe/101/image_learn.dart';

class Demo1 extends StatelessWidget {
  const Demo1({super.key});

  final _data = 'Create your first note';
  final _description = 'Add a note ';
final _createNote = 'Create a note';
final _importNotes = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark,),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            pictureImage(path: ImageItems().pictureWithoutPath),
            _TittleWidget(data: _data),
            Padding(
              padding: PaddingItems.verticalPadding, child: _SubTittleWidget(title: _description * 10,),
            ),
            const Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child : Text(_importNotes)),
            const SizedBox(height: ButtonHeights.buttonNormalHeight),
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
            onPressed: () {},
            child:  SizedBox(
              height: ButtonHeights.buttonNormalHeight,
              child: Center(
                child: Text(
                  _createNote,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          );
  }
}

// center text widget
class _SubTittleWidget extends StatelessWidget {
  const _SubTittleWidget(
      {super.key, this.textAlign = TextAlign.center, required this.title});

  final TextAlign? textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TittleWidget extends StatelessWidget {
  const _TittleWidget({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700));
  }
}

class PaddingItems {
  static EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
