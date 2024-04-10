import 'package:flutter/material.dart';
import 'package:flutter_learntwo/202/package/launch_mixin.dart';
import 'package:flutter_learntwo/202/package/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin, LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
        onPressed: () {
          launchUrl(Uri.parse('https://pub.dev/'));
        },
      ),
      body: Column(
        children: [
          Text("SELAM", style: Theme.of(context).textTheme.bodyMedium),
          const LoadingBar(),
        ],
      ),
    );
  }
}
