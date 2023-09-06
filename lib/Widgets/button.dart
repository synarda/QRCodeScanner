// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    Key? key,
    required this.function,
    required this.txt,
  }) : super(key: key);
  final Function() function;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => function(),
      child: Container(
        width: Get.width,
        height: 60,
        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Text(
          txt,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 16),
        ),
      ),
    );
  }
}
