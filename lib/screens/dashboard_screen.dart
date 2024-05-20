import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 1, 134, 243),
          iconTheme: const IconThemeData(
            color: Colors.white, // Change the drawer icon color to white
          ),
          actions: const [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.supervised_user_circle_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.mode_of_travel,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
