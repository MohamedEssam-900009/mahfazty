import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';
import 'balance_widget.dart';
import 'expense_tile_widget.dart';
import 'my_app_bar.dart';
import 'percents_widget.dart';

class Home extends StatelessWidget {
  const Home({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(10),
              const MyAppBar(),
              verticalSpace(10),
              const BalanceWidget(),
              verticalSpace(20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Top Transactions',
                  style: FontHelper.font18BoldWhite,
                ),
              ),
              verticalSpace(20),
              const PercentsWidget(),
              verticalSpace(20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Latest Transactions',
                  style: FontHelper.font18BoldWhite,
                ),
              ),
              verticalSpace(20),
              SizedBox(
                height: 500.0,
                child: ListView(
                  children: const [
                    ExpenseTileWidget(),
                    ExpenseTileWidget(),
                    ExpenseTileWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}