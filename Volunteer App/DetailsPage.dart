import 'package:flutter/material.dart';



class Detail extends StatelessWidget {
  final int index;
  Detail(this.index);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NameAndAgeInput(),
      
    );
  }
}

class NameAndAgeInput extends StatefulWidget {
  @override
  _NameAndAgeInputState createState() => _NameAndAgeInputState();
}

class _NameAndAgeInputState extends State<NameAndAgeInput> {
  int? selectedAge;
  String? selectedPeriod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('   '),
      ),







      body: Container(
        color: Colors.white30,
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Center(
                    child: Column(
                      children: const [
                        Text(
                          'Orphan care home Details',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'The volunteer must prepare          and implement an entertainment program for the orphanage',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  'image/dd.jpg',
                  width: 110,
                  height: 110,
                ),
              ],
            ),
            const SizedBox(height: 10),

            SizedBox(
              width: 400,
              height: 80,
              child: Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Color.fromARGB(66, 223, 28, 93),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Center(
                  child: Text(
                    'Charitable Society for Orphan Care in Makkah Region\nSupervisor: Noha Abdullah Bakr Al-Alyan\nFor more information: 0523641013',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            //const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color.fromARGB(66, 223, 28, 93),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(child: Text('Number of seats',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
                          ),
                          const Text('16'),
                        ],
                      ),


                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(child: Text('Gender',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
                          ),
                          const Text('Female & Male'),
                        ],
                      ),





                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(child: Text('Type participation',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
                          ),
                          const Text('Group'),
                        ],
                      ),
                    ],
                  ),



                  const SizedBox(height: 5),



                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(child: Text('Interview required?',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
                          ),
                          const Text('No'),
                        ],
                      ),




                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(child: Text('Volunteer field',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
                          ),
                          const Text('Entertainment'),
                        ],
                      ),
Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(child: Text('21 Oct-27 Oct',
                                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold))),
                          ),
                          const Text('6 days'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
           // const SizedBox(height: 5),



            Center(
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "  To join:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),

                    const SizedBox(height: 5),


                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Enter name',
                      ),
                    ),


                    const SizedBox(height: 5),

                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Enter number',
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),


                    const SizedBox(height: 5),


                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: selectedAge,
                          hint: const Text('  Enter age'),
                          items: List.generate(16, (index) => index + 15).map((age) {
                            return DropdownMenuItem<int>(
                              value: age,
                              child: Text(age.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedAge = value; // تحديث العمر
                            });
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),


                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
borderRadius: BorderRadius.circular(20),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedPeriod,
                          hint: const Text('   Select period'),
                          items: [
                            DropdownMenuItem(
                              value: 'Morning',
                              child: Text('Morning'),
                            ),
                            DropdownMenuItem(
                              value: 'Evening',
                              child: Text('Evening'),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              selectedPeriod = value; // تحديث الفترة
                            });
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    ElevatedButton(
                      onPressed: () {
                        
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Book volunteering',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(66, 223, 28, 93),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(300, 60),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
bottomNavigationBar: NavigationBar(
        height: 50,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.settings),
            selectedIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu),
            selectedIcon: Icon(Icons.menu),
            label: 'Menu',
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),

    );
  }
}