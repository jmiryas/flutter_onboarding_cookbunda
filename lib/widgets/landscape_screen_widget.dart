import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/slider_controller.dart';
import '../widgets/bottom_screen_widget.dart';
import '../widgets/slider_widget.dart';
import '../data/data.dart';

class LandscapeScreenWidget extends StatelessWidget {
  const LandscapeScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    var sliderController = Get.put(SliderController());

    return PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: pageController,
        onPageChanged: (index) {
          sliderController.currentIndex.value = index;
        },
        children: screenList.map((item) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                width: width,
                height: height,
                child: Image(image: AssetImage(item.image), fit: BoxFit.cover),
              ),
              Container(
                width: width,
                height: height / 1.5,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50.0))),
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      SliderWidget(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        item.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18.0,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(item.description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              letterSpacing: 1.0,
                              color: Colors.grey.shade700)),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const BottomScreenWidget()
                    ],
                  ),
                ),
              )
            ],
          );
        }).toList());
  }
}
