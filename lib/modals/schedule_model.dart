class ScheduleEntry {
  final String day;
  final String subject;
  final String faculty;
  final String room;
  final String time;

  ScheduleEntry({
    required this.day,
    required this.subject,
    required this.faculty,
    required this.room,
    required this.time,
  });

  factory ScheduleEntry.fromJson(
      String day, Map<String, dynamic> json) {
    return ScheduleEntry(
      day: day,
      subject: json['subject'],
      faculty: json['faculty'],
      room: json['room'],
      time: json['time'],
    );
  }
}
