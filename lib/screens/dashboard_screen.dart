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
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(255, 1, 134, 243),
                height: 100,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.all(8.0), // Add some padding if needed
                    child: Row(
                      children: const [
                        CircleAvatar(
                          radius: 30, // Adjust the radius as needed
                          backgroundImage: AssetImage("assets/images/ngov.png"),
                        ),
                        SizedBox(
                            width: 10), // Space between the image and the text
                        Text(
                          "Hello Sarkar!",
                          style: TextStyle(
                            color: Colors
                                .white, // Text color to contrast with background
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Menu",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 32, 146, 239),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.water_outlined,
                  color: Color.fromARGB(255, 1, 134, 243),
                ),
                title: Text("Overview"),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.pages,
                  color: Color.fromARGB(255, 1, 134, 243),
                ),
                title: Text("Pages"),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Others",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 32, 146, 239),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings_input_component,
                  color: Color.fromARGB(255, 1, 134, 243),
                ),
                title: Text("Components"),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 1, 134, 243),
                ),
                title: Text("Settings"),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.dark_mode,
                  color: Color.fromARGB(255, 1, 134, 243),
                ),
                title: Text("Switch to dark mode"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 1, 134, 243),
          iconTheme: const IconThemeData(
            color: Colors.white, // Change the drawer icon color to white
          ),
          title: const Text(
            "Dashboard",
            style: TextStyle(
              color: Colors.white, // Change the title color to white
            ),
          ),
          centerTitle: true, // Center align the title
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
