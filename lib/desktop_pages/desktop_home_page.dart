import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sspu_hackathon/utils/my_elevated_button.dart';
import 'package:sspu_hackathon/utils/text_inter_family.dart';
import 'package:sspu_hackathon/widgets/sized_box.dart';

class DesktopHomePage extends StatelessWidget {
  DesktopHomePage({super.key});

  final List<String> heading = [
    'AI-Powered Scheduling',
    'Multi-Program Support',
    'Faculty Management',
    'Real-time Updates',
    'Advanced Reports',
    'Easy Integration',
    'B.Ed Programs',
    'M.Ed Programs',
    'FYUP Programs',
    'ITEP Programs',
  ];

  final List<String> subHeading = [
    'Advanced algorithms automatically generate conflict-free timetables optimized for NEP 2020 requirements.',
    'Supports B.Ed, M.Ed, FYUP, ITEP and all NEP 2020 compliant programs with flexible credit structures.',
    'Comprehensive faculty workload distribution with availability tracking and expertise mapping.',
    'Dynamic editing capabilities with instant conflict detection and resolution suggestions.',
    'Detailed analytics and exportable reports in PDF and Excel formats for easy sharing.',
    'Seamlessly integrates with existing Academic Management Systems and databases.',
    '45+ Courses',
    '25+ Courses',
    '120+ Courses',
    '35+ Courses',
  ];

  final List<Icon> icons = [
    Icon(Icons.lock_clock),
    Icon(Icons.text_fields_sharp),
    Icon(Icons.person),
    Icon(Icons.refresh),
    Icon(Icons.graphic_eq),
    Icon(Icons.electric_bolt_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.schedule),
        title: Text('AI Scheduler'),
        
        actions:[
          SizedBox(width:200,child:  MyElevatedButton(text: 'home',),),
          10.wt,
          SizedBox(width:200,child: MyElevatedButton(text: 'Timetable generation',onPressed: () => context.go('/timetableGenerationPage'),),),
          10.wt,
          SizedBox(width:200,child: MyElevatedButton(text: 'Timetable view')),
          10.wt,
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Hero Section
            SizedBox(
              height: 350,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Image/homepage.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Container(
                    color: Colors.white.withAlpha(0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextInterFamily(
                            fontSize: 48,
                            fontWeight: FontWeight.w700,
                            text: 'Intelligent Timetable Generator for',
                            textHeight: 1.25,
                            color: Colors.white,
                          ),
                          TextInterFamily(
                            fontSize: 48,
                            fontWeight: FontWeight.w700,
                            text: 'NEP 2020',
                            textHeight: 1.25,
                            color: Colors.white,
                          ),
                          TextInterFamily(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            text:
                                'Streamline academic scheduling with AI-powered optimization. Generate conflict-free timetables for',
                            textHeight: 1.5,
                            color: Colors.white,
                          ),
                          TextInterFamily(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            text:
                                'B.Ed, M.Ed, FYUP, and ITEP programs in minutes, not hours.',
                            textHeight: 1.5,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            30.ht,
            TextInterFamily(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              text: 'Powerful Features for Modern Education',
              textHeight: 1.1,
            ),
            10.ht,
            TextInterFamily(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              text:
                  'Our comprehensive solution addresses all aspects of academic scheduling under the new NEP 2020 framework.',
              textHeight: 1.5,
            ),
            20.ht,

            Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                shrinkWrap:
                    true, // allows it to live inside SingleChildScrollView
                physics:
                    NeverScrollableScrollPhysics(), // disable internal scroll
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 per row
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1, // tweak this to adjust height vs width
                ),
                itemCount: heading.length - 4,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          icons[index],
                          SizedBox(height: 20),
                          TextInterFamily(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            text: heading[index],
                            textHeight: 1.33,
                          ),
                          SizedBox(height: 20),
                          TextInterFamily(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            text: subHeading[index],
                            textHeight: 1.33,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            150.ht,
            TextInterFamily(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              text: 'Powerful Features for Modern Education',
              textHeight: 1.1,
            ),
            10.ht,
            TextInterFamily(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              text:
                  'Our comprehensive solution addresses all aspects of academic scheduling under the new NEP 2020 framework.',
              textHeight: 1.5,
            ),
            20.ht,

            Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                shrinkWrap:
                    true, // allows it to live inside SingleChildScrollView
                physics:
                    NeverScrollableScrollPhysics(), // disable internal scroll
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 3 per row
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1, // tweak this to adjust height vs width
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.graphic_eq),
                          SizedBox(height: 20),
                          TextInterFamily(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            text: heading[index + 6],
                            textHeight: 1.33,
                          ),
                          SizedBox(height: 20),
                          TextInterFamily(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            text: subHeading[index + 6],
                            textHeight: 1.33,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
