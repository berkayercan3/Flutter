import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kafe/101/image_learn.dart';

class Demo1 extends StatelessWidget {
  const Demo1({super.key});

  final String _createNote = 'Create a note';
  final String _importNotes = 'Import Notes';
  final String _title = 'Demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text(_title),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            const PictureImage(path: 'resim'),
            const _TitleWidget(data: 'Create your first note'),
            const Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(
                title:
                    'Add a note Add a note Add a note Add a note Add a note Add a note Add a note Add a note Add a note Add a note',
              ),
            ),
            const Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            const SizedBox(height: ButtonHeights.buttonNormalHeight),
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeights.buttonNormalHeight,
        child: Center(
          child: Text(
            _createNote,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center, // Sabitledik
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
