import 'package:flutter/material.dart';

const String profileImage =
    "https://th.bing.com/th/id/OIP.t_Z1lCv5l14V4mfai8G0dAHaHa?w=999&h=999&rs=1&pid=ImgDetMain";
const String coverImage = "https://i.imgur.com/l1A5atB.jpeg";
const String profileName = "Janan";
const String profileTagline = "A passionate volunteer.";
const double defaultPadding = 16.0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(66, 223, 28, 93),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Color.fromARGB(255, 134, 17, 56),
            fontWeight: FontWeight.w600,
            fontSize: 29,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            _buildImage(coverImage, 150, 10, 10),
            const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/OIP.t_Z1lCv5l14V4mfai8G0dAHaHa?w=999&h=999&rs=1&pid=ImgDetMain')),
            _buildProfileDetails(),
            const SizedBox(height: 20),
            const GenderSelection(),
            const SizedBox(height: 20),
            const VolunteerBio(),
            const SizedBox(height: 20),
            const AchievementsAndVolunteer(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String url, double height, double width, double radius,
      {bool circular = false}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(circular ? 60 : radius),
      child: Image.network(url,
          width: double.infinity, height: height, fit: BoxFit.cover),
    );
  }

  Widget _buildProfileDetails() {
    return Column(
      children: [
        Text(profileName,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(profileTagline, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}

class VolunteerBio extends StatefulWidget {
  const VolunteerBio({Key? key}) : super(key: key);

  @override
  _VolunteerBioState createState() => _VolunteerBioState();
}

class _VolunteerBioState extends State<VolunteerBio> {
  final TextEditingController _bioController = TextEditingController(
    text: "I love helping others and giving back to the community.",
  );
  String _confirmationMessage = '';

  void _saveBio() {
    setState(() {
      _confirmationMessage = "Bio saved: ${_bioController.text}";
    });
  }

  @override
  void dispose() {
    _bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _bioController,
          maxLines: 5,
          decoration:
              InputDecoration(labelText: 'Bio', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _saveBio,
          // ignore: sort_child_properties_last
          child: const Text(
            'Save Bio',
            style: TextStyle(color: Color.fromARGB(255, 126, 17, 53)),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor:
const Color.fromARGB(228, 248, 184, 205), // تعيين لون الخلفية
          ),
        ),
        if (_confirmationMessage.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(_confirmationMessage,
                style:
                    TextStyle(color: const Color.fromARGB(255, 169, 55, 81))),
          ),
      ],
    );
  }
}

class GenderSelection extends StatefulWidget {
  const GenderSelection({Key? key}) : super(key: key);

  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? _selectedGender;
  final List<String> _genders = ['Male', 'Female'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Select Gender:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        DropdownButtonFormField<String>(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          focusColor: const Color.fromARGB(35, 181, 23, 76),
          dropdownColor: const Color.fromARGB(229, 237, 185, 203),
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
          ),
          value: _selectedGender,
          hint: const Text('Choose Gender'),
          isExpanded: true,
          items: _genders
              .map((gender) =>
                  DropdownMenuItem(value: gender, child: Text(gender)))
              .toList(),
          onChanged: (value) => setState(() => _selectedGender = value),
        ),
        if (_selectedGender != null)
          Text('Selected Gender: $_selectedGender',
              style: const TextStyle(color: Color.fromARGB(255, 159, 43, 89))),
      ],
    );
  }
}

class AchievementsAndVolunteer extends StatelessWidget {
  const AchievementsAndVolunteer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Achievements:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          const Text("• Volunteer of the Year 2023"),
          const Text("• Raised funds for local shelters"),
          const SizedBox(height: 10),
          const Text("Last Volunteer Work:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          const Text("• Tree Planting - September 2024"),
        ],
      ),
    );
  }
}
