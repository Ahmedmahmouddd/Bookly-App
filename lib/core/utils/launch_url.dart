import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: non_constant_identifier_names
Future<void> LaunchCustomUrl(context, String uri) async {
  Uri url = Uri.parse(uri);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Cannot launch $uri')));
  }
}
