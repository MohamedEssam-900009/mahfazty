import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/widgets/my_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscure = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    emailController = context.read<LoginCubit>().emailController;
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back!',
            style: FontHelper.font28SemiBoldWhite,
          ),
          verticalSpace(30),
          Text(
            'Email',
            style: FontHelper.font18BoldWhite,
          ),
          verticalSpace(10),
          MyTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              } else {
                return null;
              }
            },
            controller: emailController,
            hintText: 'Enter your email',
            isObscure: false,
          ),
          verticalSpace(20),
          Text(
            'Password',
            style: FontHelper.font18BoldWhite,
          ),
          verticalSpace(10),
          MyTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }else {
                return null;
              }
            },
            controller: passwordController,
            hintText: 'Enter your password',
            suffixIcon: IconButton(
              icon: isObscure
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
            ),
            isObscure: isObscure,
          ),
        ],
      ),
    );
  }
}
