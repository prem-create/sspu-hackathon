import 'package:go_router/go_router.dart';
import 'package:sspu_hackathon/desktop_pages/desktop_home_page.dart';
import 'package:sspu_hackathon/desktop_pages/desktop_timetable_generation_page.dart';
import 'package:sspu_hackathon/desktop_pages/timetable_view.dart';
import 'package:sspu_hackathon/device_select.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'selectDevice',
      builder: (context, state) => const DeviceSelect(),
    ),
    GoRoute(
      path: '/timetableGenerationPage',
      name: 'timetableGenerationPage',
      builder: (context, state) => const DesktopTimetableGenerationPage(),
    ),
    GoRoute(
      path: '/desktopHomePage',
      name: 'desktopHomePage',
      builder: (context, state) =>  DesktopHomePage(),
    ),
    GoRoute(
      path: '/timetableView',
      name: 'timetableView',
      builder: (context, state) =>  ScheduleTablePage(),
    ),
    
    
  ],
);
