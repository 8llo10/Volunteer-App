//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'list.dart';
import 'sittng.dart';
import 'DetailsPage.dart';





class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 1; // Default page

  final List<Widget> _pages = [
   const SettingsPage(),
   const MyHomePage(),
  VolunteerList(), // سوي امبورت لصفحتك و حطي حقك هنا
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_suggest_outlined),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 134, 17, 56),
        onTap: _onItemTapped,
      ),
    );
  }
}

final List<String> imgList = [
  'https://storage.googleapis.com/lablab-static-me/images/events/clgs7j2ju0000356nohkt9of0/clgs7j2ju0000356nohkt9of0_zf03k6m_imageLink.jpg',
  'https://th.bing.com/th/id/OIP.SqqWQGw_O1RtoI0ykPJiQgHaEK?rs=1&pid=ImgDetMain',
  'https://i.ytimg.com/vi/chzEYEWqQcU/maxresdefault.jpg',
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 249, 194, 214),
                borderRadius: BorderRadius.circular(80),
              ),
              child: const Icon(
                Icons.notifications_none_outlined,
                color: Color.fromARGB(255, 171, 34, 80),
                size: 38.0,
              ),
            ),
            const Column(
              children: [
                Text(
                  "Up",
                  style: TextStyle(
                    color: Color.fromARGB(255, 134, 17, 56),
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "Together",
                  style: TextStyle(
                    color: Color.fromARGB(255, 180, 41, 87),
                    fontWeight: FontWeight.w600,
                    fontSize: 23,
                  ),
                ),
              ],
            ),
            const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.t_Z1lCv5l14V4mfai8G0dAHaHa?w=999&h=999&rs=1&pid=ImgDetMain',
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 20),
Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  width: 370,
                  // ignore: sort_child_properties_last
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.search_sharp,
                        color: Color.fromARGB(169, 134, 17, 56),
                      ),
                      Expanded(
                        child: Container(
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: '  Find Your Opportunity!',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(169, 134, 17, 56)),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.mic,
                        color: Color.fromARGB(169, 134, 17, 56),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 244, 211, 222),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(169, 85, 12, 37),
                          blurRadius: 4),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://th.bing.com/th/id/OIP.SqqWQGw_O1RtoI0ykPJiQgHaEK?rs=1&pid=ImgDetMain')),
                    color: const Color.fromARGB(255, 244, 211, 222),
                    borderRadius: BorderRadius.circular(10)),
                /* child: Row(
                    children: [
                      Expanded(child: Container(
                        color: ,
                      )),
                      Expanded(child: child)
                    ],
                    
                   ), */
              )),
          Container(
              padding: EdgeInsets.only(left: 35, bottom: 15, top: 15),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Common Posts',
                  style: TextStyle(
                    color: Color.fromARGB(255, 180, 41, 87),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              )),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: 400,
            child: ListView(children: [
              Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text("Cyber ​​Security Hackathon",
                      style:
                          TextStyle(color: Color.fromARGB(255, 122, 28, 59))),
leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
              Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text(
                    "Beach volunteer campaign",
                    style: TextStyle(color: Color.fromARGB(255, 122, 28, 59)),
                  ),
                  leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
              Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text(
                    "Programming competition",
                    style: TextStyle(color: Color.fromARGB(255, 122, 28, 59)),
                  ),
                  leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
              Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text(
                    "Drawing competition",
                    style: TextStyle(color: Color.fromARGB(255, 122, 28, 59)),
                  ),
                  leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
              Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text(
                    "Artificial Intelligence Hackathon",
                    style: TextStyle(color: Color.fromARGB(255, 122, 28, 59)),
                  ),
                  leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
              Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text(
                    "Hajj and Umrah Hackathon",
                    style: TextStyle(color: Color.fromARGB(255, 122, 28, 59)),
                  ),
                  leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
              Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text("Cyber ​​Security Hackathon",
                      style:
                          TextStyle(color: Color.fromARGB(255, 122, 28, 59))),
                  leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
              Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text(
                    "Beach volunteer campaign",
                    style: TextStyle(color: Color.fromARGB(255, 122, 28, 59)),
                  ),
                  leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
              Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text(
                    "Programming competition",
                    style: TextStyle(color: Color.fromARGB(255, 122, 28, 59)),
                  ),
                  leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text(
                    "Drawing competition",
                    style: TextStyle(color: Color.fromARGB(255, 122, 28, 59)),
                  ),
                  leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
              Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text(
                    "Artificial Intelligence Hackathon",
                    style: TextStyle(color: Color.fromARGB(255, 122, 28, 59)),
                  ),
                  leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
              Card(
                elevation: 3,
                color: Color.fromARGB(255, 249, 194, 214),
                child: ListTile(
                  title: const Text(
                    "Hajj and Umrah Hackathon",
                    style: TextStyle(color: Color.fromARGB(255, 122, 28, 59)),
                  ),
                  leading: const Icon(
                    Icons.local_activity_outlined,
                    color: Color.fromARGB(255, 220, 87, 131),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(1), // حطي صفحة الربط هنا
                        ));
                  },
                ),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}