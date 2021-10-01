import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/slider_controller.dart';

class SliderWidget extends StatelessWidget {
  SliderWidget({Key? key}) : super(key: key);

  final sliderController = Get.put(SliderController());

  sliderDots() {
    List<Widget> sliders = [];

    for (int i = 0; i < sliderController.maxIndex; i++) {
      if (sliderController.currentIndex.value == i) {
        sliders.add(Container(
          width: 30.0,
          height: 5.0,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(15.0)),
        ));

        sliders.add(const SizedBox(
          width: 10.0,
        ));
      } else {
        sliders.add(Container(
          width: 5.0,
          height: 5.0,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15.0)),
        ));

        sliders.add(const SizedBox(
          width: 10.0,
        ));
      }
    }

    return sliders;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: sliderDots(),
        ));
  }
}
