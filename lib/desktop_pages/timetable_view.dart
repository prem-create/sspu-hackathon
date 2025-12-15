import 'package:flutter/material.dart';
import 'package:sspu_hackathon/modals/schedule_model.dart';
import '../services/schedule_api.dart';


class ScheduleTablePage extends StatelessWidget {
  const ScheduleTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Class Schedule"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<ScheduleEntry>>(
        future: ScheduleApi.fetchSchedule(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }

          final data = snapshot.data!;

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowColor: MaterialStateProperty.all(
                Colors.grey.shade200,
              ),
              columns: const [
                DataColumn(label: Text("Day")),
                DataColumn(label: Text("Subject")),
                DataColumn(label: Text("Faculty")),
                DataColumn(label: Text("Room")),
                DataColumn(label: Text("Time")),
              ],
              rows: data.map((e) {
                return DataRow(cells: [
                  DataCell(Text(e.day)),
                  DataCell(Text(e.subject)),
                  DataCell(Text(e.faculty)),
                  DataCell(Text(e.room)),
                  DataCell(Text(e.time)),
                ]);
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
