import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/countController.dart';
import 'package:getx/main.dart';
import 'package:getx/models/valueController.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // ElevatedButton(
            //     onPressed: () {
            //       // Get.offAll(HomePage());

            //       Get.offAllNamed("/");
            //     },
            //     child: Text("GO to HomePage")),
            // Text(Get.arguments),
            // GetBuilder<countController>(
            //     init: countController(),
            //     builder: (controller) {
            //       return Text("Count Controller value is ${controller.count}");
            //     }),
            // FlatButton(
            //     onPressed: () {
            //       Get.find<countController>().incrementalCounter();
            //     },
            //     child: Text("Increase Count"))

            GetX<ValueController>(
                init: ValueController(),
                builder: (_) {
                  return Text("Th value 1 is ${_.valueModel.value.value1}");
                }),
            Obx(() => Text(
                "Thhe value 2 is  ${Get.find<ValueController>().valueModel.value.value2}")),

            FlatButton(
                onPressed: () {
                  Get.find<ValueController>()
                      .updateTheValue("Humza Khan", "Abudllah");
                },
                child: Text("Change the Values"))
          ],
        ),
      ),
    );
  }
}
