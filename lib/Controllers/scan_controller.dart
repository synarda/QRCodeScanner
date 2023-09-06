import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qrscanner/Screens/result_page.dart';

class ScanPageController {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  void qrCreated(
    QRViewController controller,
  ) {
    EasyLoading.show(maskType: EasyLoadingMaskType.clear);
    controller.scannedDataStream.listen((scanData) {
      if (scanData.code!.isNotEmpty) {
        Get.off(ResultPage(url: scanData.code.toString()));
        EasyLoading.dismiss();
      }
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
