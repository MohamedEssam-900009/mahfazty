import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/widgets/my_text_form_field.dart';
import '../../logic/cubit/sign_up_cubit.dart';

class SignUpFormField extends StatefulWidget {
  const SignUpFormField({super.key});

  @override
  State<SignUpFormField> createState() => _SignUpFormFieldState();
}

class _SignUpFormFieldState extends State<SignUpFormField> {
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
            'Welcome to Mahfazty',
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
                return 'Please enter your name';
              } else {
                return null;
              }
            },
            controller: nameController,
            hintText: 'Enter your name',
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
              } else {
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
          verticalSpace(20),
          Text(
            'Password Confirmation',
            style: FontHelper.font18BoldWhite,
          ),
          verticalSpace(10),
          MyTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Re-enter your password';
              }else if (passwordConfirmationController.text.trim() != passwordController.text.trim()) {
                return 'Passwords do not match';
              } 
              
              else {
                return null;
              }
            },
            controller: passwordConfirmationController,
            hintText: 'Re-enter your password',
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
