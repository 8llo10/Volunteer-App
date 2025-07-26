import 'package:flutter/material.dart';
//import 'package:project/main.dart';
import 'profilepage.dart';
import 'FirstPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(66, 223, 28, 93),
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Color.fromARGB(255, 134, 17, 56),
            fontWeight: FontWeight.w600,
            fontSize: 29,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Color.fromARGB(66, 223, 28, 93),
            ),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: ListTile(
                title: Text(
                  "Ghala AbduAllah Al-Hashmi",
                  style: TextStyle(
                    color: Color.fromARGB(255, 134, 17, 56),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "8lo*****03@gmail.com",
                  style: TextStyle(
                    color: Color.fromARGB(255, 134, 17, 56),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/OIP.t_Z1lCv5l14V4mfai8G0dAHaHa?w=999&h=999&rs=1&pid=ImgDetMain',
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            height: 30,
            thickness: 1,
            color: Color.fromARGB(66, 223, 28, 93),
            endIndent: 50,
            indent: 80,
          ),
          // Adding ListTiles
          Card(
            elevation: 30,
            color: Color.fromARGB(255, 249, 194, 214),
            child: ListTile(
              title: const Text("Profile"),
              leading: const Icon(Icons.account_circle),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
          ),
          Card(
            elevation: 30,
            color: Color.fromARGB(255, 249, 194, 214),
            child: ListTile(
              title: const Text("Privacy "),
              leading: const Icon(Icons.lock_open_rounded),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () {}, // Add your onTap function here
            ),
          ),
          Card(
            elevation: 30,
            color: Color.fromARGB(255, 249, 194, 214),
            child: ListTile(
              title: const Text("Notification"),
              leading: const Icon(Icons.notifications),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () {},
              // Add your onTap function here
            ),
          ),
          Card(
            elevation: 30,
            color: Color.fromARGB(255, 249, 194, 214),
            child: ListTile(
                title: const Text("About us"),
                leading: const Icon(Icons.people_alt_outlined),
                trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                onTap: () {}),
          ), // Add your onTap function here
Card(
            elevation: 30,
            color: Color.fromARGB(255, 249, 194, 214),
            child: ListTile(
              title: const Text("LogeOut"),
              leading: const Icon(Icons.logout_rounded),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () {
                _showDialog(context);
              }, // Add your onTap function here
            ),
          ),
          const Divider(
            height: 50,
            thickness: 1,
            color: Color.fromARGB(66, 223, 28, 93),
            endIndent: 50,
            indent: 80,
          ),
        ],
      ),
    );
  }
}

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Privacy')),
      body: const Center(child: Text('Privacy Page')),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          "LogOut!!",
          style: TextStyle(
              color: Color.fromARGB(255, 134, 17, 56),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        content: const Text("Are you sure you want to LogOut?",
            style: TextStyle(
                color: Color.fromARGB(255, 134, 17, 56),
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FirstPage()), //صفحة تسجيل الدخول
              );
            },
            child: const Text("Logut",
                style: TextStyle(
                    color: Color.fromARGB(255, 178, 10, 10),
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text("Cancel"),
          ),
        ],
      );
    },
  );
}
