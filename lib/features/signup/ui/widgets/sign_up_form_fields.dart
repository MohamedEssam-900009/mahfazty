import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/widgets/my_text_form_field.dart';
import '../../logic/cubit/sign_up_cubit.dart';

class SignUpFormFields extends StatefulWidget {
  const SignUpFormFields({
    super.key,
  });

  @override
  State<SignUpFormFields> createState() => _SignUpFormFieldsState();
}

class _SignUpFormFieldsState extends State<SignUpFormFields> {
  bool isObscure = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late TextEditingController passwordConfirmationController;

  @override
  void initState() {
    super.initState();
    emailController = context.read<SignUpCubit>().emailController;
    passwordController = context.read<SignUpCubit>().passwordController;
    nameController = context.read<SignUpCubit>().nameController;
    passwordConfirmationController =
        context.read<SignUpCubit>().passwordConfirmationController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome To Mahfazty!',
            style: FontHelper.font28SemiBoldWhite,
          ),
          verticalSpace(30),
          Text(
            'Name',
            style: FontHelper.font18BoldWhite,
          ),
          verticalSpace(10),
          MyTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your Name';
              }
              return null;
            },
            controller: nameController,
            hintText: 'Enter your Name',
            isObscure: false,
          ),
          verticalSpace(20),
          Text(
            'Email',
            style: FontHelper.font18BoldWhite,
          ),
          verticalSpace(10),
          MyTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            controller: emailController,
            hintText: 'Enter your Email',
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
                }
                return null;
              },
              controller: passwordController,
              isObscure: isObscure,
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
              hintText: 'Enter your Password'),
          verticalSpace(20),
          Text(
            'Password Confirmation',
            style: FontHelper.font18BoldWhite,
          ),
          verticalSpace(10),
          MyTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please re-enter your password';
              } else if (passwordConfirmationController.text.trim() !=
                  passwordController.text.trim()) {
                return "Passwords Doesn't match";
              }
              return null;
            },
            controller: passwordConfirmationController,
            isObscure: isObscure,
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
            hintText: 'Re-enter your Password',
          ),
        ],
      ),
    );
  }
}
