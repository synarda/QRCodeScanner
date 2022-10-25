import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class ScanPageController{

  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  void qrCreated(QRViewController controller) {
    final controllerScan= Get.put(ScanPageController());
    controllerScan.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      var result = scanData;
      launch("${result.code}");
    });
  }

  void qrPermisson(BuildContext context, QRViewController qrCont, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

}