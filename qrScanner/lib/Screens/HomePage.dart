import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: ()=>Get.toNamed("/ScanPage"),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black
            ),
            child: const Icon(Icons.search,color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
