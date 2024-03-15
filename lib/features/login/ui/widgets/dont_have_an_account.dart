import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/fonts.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: FontHelper.font13WhiteW300,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.signUp);
            },
            child: const Text('Sign Up'))
      ],
    );
  }
}
