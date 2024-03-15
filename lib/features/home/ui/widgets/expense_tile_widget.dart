import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';

class ExpenseTileWidget extends StatelessWidget {
  const ExpenseTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 41, 39, 78),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Electricity',
                      style: FontHelper.font18BoldWhite,
                    ),
                    verticalSpace(10),
                    Text(
                      '20 Apr, 2022',
                      style: FontHelper.font13GreyW300,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    '- 200 EGP',
                    style: FontHelper.font18BoldWhite,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: Container(
              height: double.infinity,
              width: 20.0,
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
