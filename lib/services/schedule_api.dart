import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sspu_hackathon/modals/schedule_model.dart';


class ScheduleApi {
  static const String url =
      "http://localhost:5000/api/schedule";

  static Future<List<ScheduleEntry>> fetchSchedule() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception("Failed to load schedule");
    }

    final Map<String, dynamic> json = jsonDecode(response.body);
    final Map<String, dynamic> schedule = json['schedule'];

    List<ScheduleEntry> entries = [];

    schedule.forEach((day, classes) {
      for (var item in classes) {
        entries.add(ScheduleEntry.fromJson(day, item));
      }
    });

    return entries;
  }
}
