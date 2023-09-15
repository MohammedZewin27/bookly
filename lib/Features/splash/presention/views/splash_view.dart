import 'package:flutter/material.dart';
import 'package:my_bookly/Features/splash/presention/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody() ,
    );
  }
}
