import 'package:flutter/material.dart';
import 'DetailsPage.dart';

class VolunteerList extends StatefulWidget {
  @override
  _VolunteerListState createState() => _VolunteerListState();
}

class _VolunteerListState extends State<VolunteerList> {
  int _selectedIndex = 0;
  bool _isDarkMode = false; // متغير لتحديد الوضع

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode; // تغيير قيمة المتغير
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Volunteers',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        brightness: _isDarkMode ? Brightness.dark : Brightness.light, // تغيير السمة
        appBarTheme: AppBarTheme(
          backgroundColor: _isDarkMode ? Colors.grey[850] : Color.fromARGB(66, 223, 28, 93),
          titleTextStyle: TextStyle(color: _isDarkMode ? Colors.white : Colors.black),
        ),
        iconTheme: IconThemeData(color: _isDarkMode ? Colors.white : Colors.black),
      ),
      home: MyHomePage(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
        toggleTheme: _toggleTheme, // تمرير الوظيفة
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  final VoidCallback toggleTheme; // تعريف نوع الوظيفة

  MyHomePage({required this.selectedIndex, required this.onItemTapped, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> tab1Items = [
      {'title': 'Volunteer at an orphanage', 'subtitle': 'Jeddah, Sulaymaniyah'},
      {'title': 'Organizer at Who Am I Event', 'subtitle': 'Makkah, next to the labor office'},
      {'title': 'Organizer of the Class of 2024 Graduation Ceremony.', 'subtitle': 'ALjawhara Stadium'},
      {'title': 'Organizing winter trips', 'subtitle': 'Jeddah, Sulaymaniyah'},
      {'title': 'Volunteer in organizing foreign travelers', 'subtitle': 'Mecca, train station'},
    ];

    final List<Map<String, String>> tab2Items = [
      {'title': 'Volunteer at an orphanage', 'subtitle': 'Jeddah, Sulaymaniyah'},
      {'title': 'Organizer at Who Am I Event', 'subtitle': 'Makkah, next to the labor office'},
    ];


    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Volunteers'),
          actions: [
            IconButton(
              icon: Icon(Icons.brightness_6),
              onPressed: toggleTheme, // استخدام الوظيفة
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Current Volunteers'),
              Tab(text: 'Previous Volunteering'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildListView(tab1Items, context),
            _buildListView(tab2Items, context),
          ],
        ),
      ),
    );
  }

  ListView _buildListView(List<Map<String, String>> items, BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text(items[index]['title']!),
            subtitle: Text(items[index]['subtitle']!),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detail(index),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
