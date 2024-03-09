import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahfazty/features/sign_up/logic/cubit/sign_up_state.dart';

import '../../../../core/routing/routes.dart';
import '../../logic/cubit/sign_up_cubit.dart';

class SignUpListenerWidget extends StatelessWidget {
  const SignUpListenerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignUpSuccessState ||
          current is SignUpErrorState ||
          current is SignUpLoadingState,
      listener: (context, state) {
        if (state is SignUpLoadingState) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is SignUpErrorState) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Error Signing Up"),
            backgroundColor: Colors.red,
          ));
        } else {
          Navigator.pop(context);
          Navigator.pushReplacementNamed(context, Routes.home);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
