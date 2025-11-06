import 'package:flutter/material.dart';
import 'package:sspu_hackathon/desktop_pages/timetable_generation_parameter.dart';
import 'package:sspu_hackathon/widgets/my_app_bar.dart';
import 'package:sspu_hackathon/widgets/my_drawer.dart';
import 'package:sspu_hackathon/widgets/sized_box.dart';
import 'package:sspu_hackathon/widgets/waving_background.dart';

class DesktopTimetableGenerationPage extends StatelessWidget {
  const DesktopTimetableGenerationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: WavingGradientBackground(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 2, child: MyDrawer()),
              10.wt,
              Expanded(
                flex: 6,
                child: SingleChildScrollView(child: TimeTableParameters()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
