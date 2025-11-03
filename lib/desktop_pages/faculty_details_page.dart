import 'package:flutter/material.dart';
import 'package:sspu_hackathon/desktop_pages/faculty_details_input.dart';
import 'package:sspu_hackathon/utils/my_box.dart';
import 'package:sspu_hackathon/widgets/my_app_bar.dart';
import 'package:sspu_hackathon/widgets/my_drawer.dart';
import 'package:sspu_hackathon/widgets/sized_box.dart';

class FacultyDetailsPage extends StatelessWidget {
  const FacultyDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 2, child: MyDrawer()),
            10.wt,
            Expanded(
              flex: 6,
              child: SingleChildScrollView(child: FacultyDetailsInput()),
            ),
            10.wt,
            Expanded(
              flex: 2,
              child: MyBox(
                height: 200,
                width: double.infinity,
                child: Text('status'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
