import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/my_colors.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 30.0,
      ),
      decoration: const BoxDecoration(
        color: MyColors.navyColor,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Your Balance',
                style: FontHelper.font18BoldWhite,
              ),
              verticalSpace(5),
              Text(
                '1000 EGP',
                style: FontHelper.font28SemiBoldWhite,
              ),
            ],
          ),
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.cyan,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}