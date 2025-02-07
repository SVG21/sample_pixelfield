import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_pixelfield/feature/intro/presentation/widgets/welcome_content.dart';
import 'package:sample_pixelfield/ui_kit/app_background.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: Stack(
     children: [
       AppBackground(),
       Positioned(
           bottom: 24,
           left: 16,
           right: 16,
           child: WelcomeContent()),
     ],
   ),
 );
  }
}