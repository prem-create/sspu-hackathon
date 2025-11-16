import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sspu_hackathon/widgets/my_app_bar.dart';
import 'package:sspu_hackathon/widgets/my_drawer.dart';
import 'package:sspu_hackathon/widgets/waving_background.dart';

class TimetableView extends StatelessWidget {
  const TimetableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: WavingGradientBackground(
        child: Row(children: [
          MyDrawer(),
          Expanded(
            child: Lottie.asset('assets/animations/FemaleEmployeeWorkingonDataSecurity.json'),
          )
        ],),
      ),
    );
  }
}