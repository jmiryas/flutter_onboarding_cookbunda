import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/slider_controller.dart';

class BottomScreenWidget extends StatelessWidget {
  const BottomScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sliderController = Get.put(SliderController());

    return Obx(() => Container(
        margin: const EdgeInsets.all(20.0),
        child:
            sliderController.currentIndex.value == sliderController.maxIndex - 1
                ? Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: const Center(
                      child: Text(
                        "Get Started",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Skip Now",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0),
                      ),
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.green,
                        child: CircleAvatar(
                            radius: 14.0,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 18.0,
                              color: Colors.green,
                            )),
                      )
                    ],
                  )));
  }
}
