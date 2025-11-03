import 'package:flutter/material.dart';
import 'package:sspu_hackathon/desktop_pages/room_details_page.dart';
import 'package:sspu_hackathon/utils/my_box.dart';
import 'package:sspu_hackathon/utils/my_check_box.dart';
import 'package:sspu_hackathon/utils/my_drop_down_button.dart';
import 'package:sspu_hackathon/utils/my_elevated_button.dart';
import 'package:sspu_hackathon/utils/my_rating_slider.dart';
import 'package:sspu_hackathon/utils/my_text_field.dart';
import 'package:sspu_hackathon/utils/text_inter_family.dart';
import 'package:sspu_hackathon/widgets/sized_box.dart';

class FacultyDetailsInput extends StatelessWidget {
  const FacultyDetailsInput({super.key});

  @override
  Widget build(BuildContext context) {
    return MyBox(
      height: 1700,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInterFamily(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              text: 'Faculty Details',
              textHeight: 1,
            ),
            30.ht,
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage('assets/Image/facultyPage.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            30.ht,
            TextInterFamily(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textHeight: 1.4,
              text: 'Faculty Details Input',
            ),
            10.ht,
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              textHeight: 1.42,
              text:
                  'Enter or update the comprehensive details for a faculty member',
            ),
            20.ht,
            Row(
              children: [
                Icon(Icons.person),
                2.wt,
                TextInterFamily(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  text: 'Personal Information',
                  textHeight: 1.4,
                ),
              ],
            ),
            20.ht,
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
                        text: 'Name',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyTextField(hint: 'prof. Jane Doe'),
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
                        text: 'Faculty ID',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyTextField(hint: 'F-2024-001'),
                    ],
                  ),
                ),
              ],
            ),
            20.ht,
            Row(
              children: [
                Icon(Icons.school_outlined),
                2.wt,
                TextInterFamily(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  text: 'Academic Details',
                  textHeight: 1.4,
                ),
              ],
            ),
            20.ht,
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
                        text: 'Department',
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
                        text: 'Primary Subject',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyDropDownButton(
                        hint: 'eg: DSA',
                        items: [
                          'DSA',
                          'Digital Electronics',
                          'Mathematics-3',
                          'Operating Systems',
                          'Principal of Programming Language',
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            30.ht,

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInterFamily(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  text: 'Role',
                  textHeight: 1,
                ),
                10.ht,
                SizedBox(
                  width: 370,
                  child: MyDropDownButton(
                    hint: 'eg: Professor',
                    items: [
                      'Professor',
                      'Lab incharge',
                      'Lab Asst.',
                      'NCC Incharge',
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
            MyRatingSlider(
              text: 'Maximum weekly hours:',
              divisions: 50,
              max: 50,
              min: 0,
            ),
            10.ht,
            TextInterFamily(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              text:
                  'Adjust the maximum hours a faculty member can be scheduled per week.',
              textHeight: 1.33,
            ),
            20.ht,
            Row(
              children: [
                Icon(Icons.call),
                2.wt,
                TextInterFamily(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  text: 'Contact Information',
                  textHeight: 1.4,
                ),
              ],
            ),

            20.ht,
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
                        text: 'Email',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyTextField(hint: 'eg: jane.doe@example.edu'),
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
                        text: 'Phone Number',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyTextField(hint: '+1 (555) 123-4567'),
                    ],
                  ),
                ),
              ],
            ),

            20.ht,
            Row(
              children: [
                Icon(Icons.timer_sharp),
                2.wt,
                TextInterFamily(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  text: 'Availability',
                  textHeight: 1.4,
                ),
              ],
            ),
            Row(
              children: [
                Wrap(
                  children: [
                    Row(
                      children: [
                        MyCheckBox(),
                        TextInterFamily(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          text: 'Monday',
                          textHeight: 1.57,
                        ),
                      ],
                    ),
                    5.wt,
                    Row(
                      children: [
                        MyCheckBox(),
                        TextInterFamily(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          text: 'Tuesday',
                          textHeight: 1.57,
                        ),
                      ],
                    ),
                    5.wt,
                    Row(
                      children: [
                        MyCheckBox(),
                        TextInterFamily(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          text: 'Wednesday',
                          textHeight: 1.57,
                        ),
                      ],
                    ),
                    5.wt,
                    Row(
                      children: [
                        MyCheckBox(),
                        TextInterFamily(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          text: 'Thursday',
                          textHeight: 1.57,
                        ),
                      ],
                    ),
                    5.wt,
                    Row(
                      children: [
                        MyCheckBox(),
                        TextInterFamily(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          text: 'Friday',
                          textHeight: 1.57,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            30.ht,
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              text: 'Additional Availability Notes',
              textHeight: 1,
            ),
            20.ht,
            MyTextField(
              hint:
                  'E.g., Prefer mornings on Mondays and Fridays'
                  ',Available for evening classes on Wednesdays.\n\n\n\n',
            ),
            20.ht,
            Row(
              children: [
                Icon(Icons.settings),
                2.wt,
                TextInterFamily(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  text: 'Advance Preference',
                  textHeight: 1.4,
                ),
              ],
            ),

            20.ht,
            Row(
              children: [
                MyCheckBox(),
                TextInterFamily(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  text: 'Designate as primary researcher for specific projects',
                  textHeight: 1.57,
                ),
              ],
            ),
            5.wt,
            Row(
              children: [
                MyCheckBox(),
                TextInterFamily(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  text: 'Eligible for student mentorship programs',
                  textHeight: 1.57,
                ),
              ],
            ),
            5.wt,
            Row(
              children: [
                MyCheckBox(),
                TextInterFamily(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  text: 'Available for committee assignments',
                  textHeight: 1.57,
                ),
              ],
            ),
            5.wt,

            30.ht,
            MyElevatedButton(
              text: 'Save and next',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RoomDetailsPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
