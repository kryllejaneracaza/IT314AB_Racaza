import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  students.sort(
  (a, b) => a['name'].compareTo(b['name']),
);
}


List<Map<String, dynamic>> students = [
  {
    'image': 'assets/profile1.png',
    'name': 'Krylle Jane',
    'course': 'BSIT',
    'year': '3rd Year',
    'age': 20,
    'hobby': 'Dancing',
    'studentId': '2023001',
    'email': 'krylle@example.com',
    'favoriteSubject': 'Programming',
  },
  {
    'image': 'assets/profile2.png',
    'name': 'Kayra Ylaya',
    'course': 'BSHM',
    'year': '2nd Year',
    'age': 20,
    'hobby': 'Cooking',
    'studentId': '2024002',
    'email': 'kayra@example.com',
    'favoriteSubject': 'Food Service',
  },
  {
    'image': 'assets/profile3.png',
    'name': 'Maria Santos',
    'course': 'BSIT',
    'year': '3rd Year',
    'age': 21,
    'hobby': 'Reading',
    'studentId': '2023003',
    'email': 'maria@example.com',
    'favoriteSubject': 'Database',
  },
  {
    'image': 'assets/profile4.png',
    'name': 'John Cruz',
    'course': 'BSCS',
    'year': '2nd Year',
    'age': 20,
    'hobby': 'Gaming',
    'studentId': '2024004',
    'email': 'john@example.com',
    'favoriteSubject': 'Computer Science',
  },
  {
    'image': 'assets/profile5.png',
    'name': 'Sophia Reyes',
    'course': 'BSBA',
    'year': '1st Year',
    'age': 19,
    'hobby': 'Photography',
    'studentId': '2025005',
    'email': 'sophia@example.com',
    'favoriteSubject': 'Marketing',
  },
];



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFDF5),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFC107),
          foregroundColor: Colors.black,
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Student Directory',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: students.isEmpty
            ? const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(
                      Icons.people_outline,
                      size: 70,
                      color: Color(0xFFFFC107),
                    ),

                    SizedBox(height: 15),

                    Text(
                      'No students found.',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'The student list is empty.',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )

            : ListView.builder(
                padding: const EdgeInsets.all(16),

                itemCount: students.length,

                itemBuilder: (context, index) {
                  final student = students[index];

                  return Card(
                    margin: const EdgeInsets.only(bottom: 15),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),

                      side: const BorderSide(
                        color: Color(0xFFFFC107),
                        width: 2,
                      ),
                    ),

                    color: const Color(0xFFFFFDF5),

                    child: ListTile(
                      contentPadding: const EdgeInsets.all(12),

                      leading: CircleAvatar(
                        radius: 30,

                        backgroundImage: AssetImage(
                          student['image'],
                        ),
                      ),

                      title: Text(
                        student['name'],

                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      subtitle: Text(
                        'Student ID: '
                        '${student['studentId']}\n'
                        'Course: ${student['course']}\n'
                        'Year: ${student['year']}\n'
                        'Age: ${student['age']}\n'
                        'Hobby: ${student['hobby']}\n'
                        'Email: ${student['email']}\n'
                        'Favorite Subject: '
                        '${student['favoriteSubject']}',
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}