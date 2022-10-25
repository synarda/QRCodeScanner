import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrscanner/Controllers/ScanPageController.dart';
import '../Widgets/Widgets.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: qrField(context)),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                        qrButton(),
                    ],
                  ),
                ),
              ),),
        ],
      ),
    );
  }
}
