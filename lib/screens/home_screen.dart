import 'package:flutter/material.dart';

import '../widgets/landscape_screen_widget.dart';
import '../widgets/potrait_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (builder, orientation) {
        if (orientation == Orientation.portrait) {
          return const PotraitScreenWidget();
        } else {
          return const LandscapeScreenWidget();
        }
      }),
    );
  }
}
