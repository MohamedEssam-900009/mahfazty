import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahfazty/features/home/ui/screens/home_screen.dart';
import 'package:mahfazty/features/login/logic/cubit/login_cubit.dart';
import 'package:mahfazty/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:mahfazty/features/sign_up/ui/screens/sign_up_screen.dart';

import '../../features/login/ui/screens/login_screen.dart';
import '../networking/firebase_helper.dart';
import 'routes.dart';

class Routing {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(FirebaseHelper()),
            child: const LoginScreen(),
          ),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(FirebaseHelper()),
            child: const HomeScreen(),
          ),
        );
      case Routes.signup:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SignUpCubit(FirebaseHelper()),
            child: const SignUpScreen(),
          ),
        );
      default:
        return MaterialPageRoute(builder: (context) => const NoRouteScreen());
    }
  }
}

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('No Route Found'),
      ),
    );
  }
}
