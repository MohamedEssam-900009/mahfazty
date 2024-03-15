import 'package:flutter/material.dart';
import 'package:mahfazty/features/transactions/widgets/my_chart.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(child: MyChart()),
    );
  }
}
