import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';
import 'core/routing/routing.dart';
import 'features/login/ui/screens/login_screen.dart';

class MyApp extends StatelessWidget {
  final Routing routing;

  const MyApp({super.key, required this.routing});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        title: 'Mahfazty',
        home: const LoginScreen(),
        initialRoute: Routes.login,
        onGenerateRoute: routing.onGenerateRoute,
      ),
    );
  }
}
