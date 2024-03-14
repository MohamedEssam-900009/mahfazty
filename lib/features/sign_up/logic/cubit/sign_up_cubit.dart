import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahfazty/features/sign_up/logic/cubit/sign_up_state.dart';

import '../../../../core/networking/firebase_helper.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final FirebaseHelper firebaseHelper;

  SignUpCubit(this.firebaseHelper) : super(SignUpInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  signUp() async {
    emit(SignUpLoadingState());
    try {
      await firebaseHelper
          .registerUser(
              emailController.text.trim(), passwordController.text.trim())
          .then((value) => emit(SignUpSuccessState()));
    } catch (e) {
      emit(SignUpErrorState());
    }
  }
}
