import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qrscanner/Controllers/scan_controller.dart';

class FieldWidget extends StatelessWidget {
  const FieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ScanPageController>();
    return SizedBox(
      height: Get.height / 1.5,
      child: QRView(
        key: controller.qrKey,
        onQRViewCreated: controller.qrCreated,
        overlay: QrScannerOverlayShape(
            borderColor: Colors.red, borderRadius: 10, borderLength: 30, borderWidth: 10, cutOutSize: Get.height / 2.5),
        onPermissionSet: (qrCont, e) => controller.qrPermisson(context, qrCont, e),
      ),
    );
  }
}
