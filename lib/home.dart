import 'package:flutter/material.dart';
import 'package:pushnotify/controllers/notification.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    PushNotifications.getDeviceToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        // backgroundColor: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        backgroundColor: Colors.deepPurple,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
    );
  }
}
