import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahfazty/home_or_login.dart';

import 'core/routing/routing.dart';

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
        title: 'Mahfazty',
        home: const HomeOrLogin(),
        onGenerateRoute: routing.generateRoute,
      ),
    );
  }
}
