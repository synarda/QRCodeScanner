import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrscanner/Controllers/scan_controller.dart';
import 'package:qrscanner/Widgets/button.dart';

import '../Widgets/field.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ScanPageController());

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const FieldWidget(),
          ButtonsWidget(txt: "FLASH", function: () => controller.controller?.toggleFlash())
        ],
      ),
    );
  }
}
