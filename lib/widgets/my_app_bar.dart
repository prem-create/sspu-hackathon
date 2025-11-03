import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text('AI Scheduler'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        IconButton(onPressed: () => context.go('/'), icon: Icon(Icons.logout_rounded)),
      ],
    );
  }
}
