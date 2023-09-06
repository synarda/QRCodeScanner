// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrscanner/Screens/scan_page.dart';
import 'package:qrscanner/Widgets/button.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Column(children: [
          Text(
            "Scanned result:".toUpperCase(),
            textAlign: TextAlign.start,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: 16),
          Text(
            url,
            textAlign: TextAlign.start,
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
        ]),
        Column(
          children: [
            ButtonsWidget(txt: "Go", function: () => launch(url)),
            ButtonsWidget(txt: "Copy", function: () => Share.share(url)),
            ButtonsWidget(txt: "Scan Different Code", function: () => Get.to(const ScanPage())),
          ],
        )
      ]),
    );
  }
}
