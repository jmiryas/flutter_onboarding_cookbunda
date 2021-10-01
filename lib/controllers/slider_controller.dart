import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:onboarding_cookbunda/data/data.dart';

class SliderController extends GetxController {
  var currentIndex = 0.obs;
  var maxIndex = screenList.length;

  var orientation = Orientation.portrait;
}
