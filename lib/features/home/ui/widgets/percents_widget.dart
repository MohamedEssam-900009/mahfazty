import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/theming/fonts.dart';

class PercentsWidget extends StatelessWidget {
  const PercentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircularPercentIndicator(
          arcType: ArcType.FULL,
          arcBackgroundColor: Colors.transparent,
          radius: 50.0,
          lineWidth: 12.0,
          percent: 1.0,
          center: Text(
            "100%",
            style: FontHelper.font18BoldWhite,
          ),
          footer: Text(
            "Bills",
            style: FontHelper.font18BoldWhite,
          ),
          progressColor: Colors.green,
        ),
        CircularPercentIndicator(
          arcType: ArcType.FULL,
          arcBackgroundColor: Colors.transparent,
          radius: 50.0,
          lineWidth: 12.0,
          percent: 0.25,
          center: Text(
            "25%",
            style: FontHelper.font18BoldWhite,
          ),
          footer: Text(
            "Internet",
            style: FontHelper.font18BoldWhite,
          ),
          progressColor: Colors.yellow,
        ),
        CircularPercentIndicator(
          arcType: ArcType.FULL,
          arcBackgroundColor: Colors.transparent,
          radius: 50.0,
          lineWidth: 12.0,
          percent: 0.7,
          center: Text(
            "70%",
            style: FontHelper.font18BoldWhite,
          ),
          footer: Text(
            "Bills",
            style: FontHelper.font18BoldWhite,
          ),
          progressColor: Colors.blue,
        ),
      ],
    );
  }
}
