import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/firebase_helper.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final FirebaseHelper firebaseHelper;
  SignUpCubit(this.firebaseHelper) : super(SignUpInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
