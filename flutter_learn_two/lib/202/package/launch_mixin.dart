import 'package:flutter/material.dart';
import 'package:flutter_learntwo/202/package_learn_view.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin on State<PackageLearnView> {
  void launchUrl(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    }
  }
}
