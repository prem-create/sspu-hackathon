import 'package:flutter/material.dart';
import 'package:sspu_hackathon/desktop_pages/room_details_page.dart';
import 'package:sspu_hackathon/utils/my_box.dart';
import 'package:sspu_hackathon/utils/my_drop_down_button.dart';
import 'package:sspu_hackathon/utils/my_elevated_button.dart';
import 'package:sspu_hackathon/utils/my_text_field.dart';
import 'package:sspu_hackathon/utils/text_inter_family.dart';
import 'package:sspu_hackathon/widgets/sized_box.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return MyBox(
      height: 1000,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInterFamily(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              text: 'Room Details',
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
              text: 'Room Details inputs',
            ),
            10.ht,
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              textHeight: 1.42,
              text:
                  'Manage the pysical and technical specifications of your rooms',
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
                        text: 'Room ID',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyTextField(hint: 'RM-124'),
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
                        text: 'Room name',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyTextField(hint: 'G2 hall'),
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
                        text: 'Room type',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyDropDownButton(
                        hint: 'eg: Lecture Hall',
                        items: [
                          'Lecture Hall',
                          'Auditorium',
                          'Smart Classroom',
                          'Lab',
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
                        text: 'Capacity',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyTextField(hint: '100'),
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
                  text: 'Equipment',
                  textHeight: 1,
                ),
                10.ht,
                SizedBox(
                  width: 370,
                  child: MyDropDownButton(
                    hint: 'Select Available equipment',
                    items: ['Projector', 'Mic and Speakers', 'Smart Board'],
                  ),
                ),
              ],
            ),

            30.ht,
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              text: 'Description',
              textHeight: 1,
            ),
            20.ht,
            MyTextField(
              hint:
                  'E.g., Prefer mornings on Mondays and Fridays'
                  ',Available for evening classes on Wednesdays.\n\n\n\n',
            ),
            20.ht,

            MyElevatedButton(
              text: 'Generate Timetable',
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
