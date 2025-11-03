import 'package:flutter/material.dart';
import 'package:sspu_hackathon/desktop_pages/faculty_details_page.dart';
import 'package:sspu_hackathon/utils/my_box.dart';
import 'package:sspu_hackathon/utils/my_check_box.dart';
import 'package:sspu_hackathon/utils/my_drop_down_button.dart';
import 'package:sspu_hackathon/utils/my_elevated_button.dart';
import 'package:sspu_hackathon/utils/my_rating_slider.dart';
import 'package:sspu_hackathon/utils/my_text_field.dart';
import 'package:sspu_hackathon/utils/text_inter_family.dart';
import 'package:sspu_hackathon/widgets/sized_box.dart';

class TimeTableParameters extends StatelessWidget {
  const TimeTableParameters({super.key});

  @override
  Widget build(BuildContext context) {
    return MyBox(
      height: 1600,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInterFamily(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              text: 'Timetable Generation',
              textHeight: 1,
            ),
            30.ht,
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Image/time_table_genertion.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            30.ht,
            TextInterFamily(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textHeight: 1.4,
              text: 'Generation Parameters',
            ),
            10.ht,
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              textHeight: 1.42,
              text:
                  'Define the scope and preferences for the AI-powered timetable generation.',
            ),
            30.ht,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInterFamily(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        text: 'Academic Year',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyDropDownButton(
                        hint: 'eg: 1990-1991',
                        items: ['2025-2026', '2026-2027', 'other'],
                      ),
                    ],
                  ),
                ),
                10.wt,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInterFamily(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        text: 'Course Name',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyDropDownButton(
                        hint: 'B.tech, M.tech',
                        items: [
                          'B.tech',
                          'M.tech',
                          'LLb',
                          'B.pharma',
                          'D.pharma',
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            30.ht,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInterFamily(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        text: 'Course Type',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyDropDownButton(
                        hint: 'eg: Computer Science',
                        items: [
                          'Computer Science and Engineering',
                          'Civil Engineering',
                          'Mechanical Engineering',
                          'Artificial Intelligence and Data Science',
                        ],
                      ),
                    ],
                  ),
                ),
                10.wt,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInterFamily(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        text: 'Course code',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyTextField(hint: 'eg: d30222(012)'),
                    ],
                  ),
                ),
              ],
            ),
            30.ht,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInterFamily(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        text: 'Total Credit Hours',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyTextField(hint: 'eg: 10'),
                    ],
                  ),
                ),
                10.wt,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInterFamily(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        text: 'Semester',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyDropDownButton(
                        hint: 'eg: 1,2,3',
                        items: ['1', '2', '3', '4', '5', '6', '7', '8'],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            30.ht,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInterFamily(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        text: 'Number of Student',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyTextField(hint: 'eg: 35'),
                    ],
                  ),
                ),
                10.wt,
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextInterFamily(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              text: 'Theory hours',
                              textHeight: 1,
                            ),
                            10.ht,
                            MyTextField(hint: 'eg: 3'),
                          ],
                        ),
                      ),
                      10.wt,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextInterFamily(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              text: 'Practical hours',
                              textHeight: 1,
                            ),
                            10.ht,
                            MyTextField(hint: 'eg: 3'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            30.ht,
            MyRatingSlider(text: 'Optimization Level (Percentage):',),
            10.ht,
            TextInterFamily(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              text:
                  'Higher levels prioritize efficiency, lower levels prioritize specific constraints more heavily.',
              textHeight: 1.33,
            ),
            30.ht,
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              text: 'Conflict Avoidance Priority',
              textHeight: 1,
            ),
            10.ht,
            MyDropDownButton(
              hint: 'High (Strictly No Overlaps)',
              items: ['High (Strictly No Overlaps)', 'Medium', 'low'],
            ),
            30.ht,
            TextInterFamily(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              text: 'Advance Options',
              textHeight: 1.55,
            ),
            30.ht,
            Row(
              children: [
                MyCheckBox(),
                TextInterFamily(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  text: 'Consider Faculty Preferred Timings',
                  textHeight: 1.57,
                ),
              ],
            ),
            30.ht,
            Row(
              children: [
                MyCheckBox(),
                TextInterFamily(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  text: 'Prioritize Optimal Room Utilization',
                  textHeight: 1.57,
                ),
              ],
            ),
            30.ht,
            Row(
              children: [
                MyCheckBox(),
                TextInterFamily(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  text: 'Enable AI-driven Course Grouping Suggestions',
                  textHeight: 1.57,
                ),
              ],
            ),
            30.ht,
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              text: 'Additional Constraints (Optional)',
              textHeight: 1,
            ),
            20.ht,
            MyTextField(
              hint:
                  'E.g., Ensure all 3rd-year CS core courses are scheduled before 1 PM, Exclude Room 101 for labs on Thursdays.\n\n\n\n',
            ),
            20.ht,
            TextInterFamily(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              text:
                  'Provide any specific rules or preferences not covered by the options above.',
              textHeight: 1.33,
            ),
            30.ht,
            MyElevatedButton(
              text: 'Save and next',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>FacultyDetailsPage() ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
