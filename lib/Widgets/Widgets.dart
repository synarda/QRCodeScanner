import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../Controllers/ScanPageController.dart';

Widget qrField(BuildContext context) {
  final controllerScan = Get.put(ScanPageController());
  var scanArea = (MediaQuery.of(context).size.height / 2.5);
  return QRView(
    key: controllerScan.qrKey,
    onQRViewCreated: controllerScan.qrCreated,
    overlay: QrScannerOverlayShape(
        borderColor: Colors.red,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea),
    onPermissionSet: (qrCont, e) => controllerScan.qrPermisson(context, qrCont, e),
  );
}

Widget qrButton(){
  final controllerScan = Get.put(ScanPageController());
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        width: 150,
        height: 50,
        margin: const EdgeInsets.all(6),
        child: ElevatedButton(
          onPressed: () async => await controllerScan
              .controller
              ?.resumeCamera(),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            textStyle: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold),
          ),
          child: const Text('Scan',
              style: TextStyle(fontSize: 12)),
        ),
      ),
      Container(
        width: 150,
        height: 50,
        margin: const EdgeInsets.all(6),
        child: ElevatedButton(
          onPressed: () async => await controllerScan
              .controller
              ?.toggleFlash(),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            textStyle: const TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold),
          ),
          child: const Text('Flash'),),
      ),
    ],
  );
}


