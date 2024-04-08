import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/constants.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: mainColor),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
