import 'package:flutter/material.dart';

void main() {
  students.sort(
    (a, b) => a['name'].compareTo(b['name']),
  );

  runApp(const MyApp());
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
    'favorite': false,
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
    'favorite': false,
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
    'favorite': false,
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
    'favorite': false,
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
    'favorite': false,
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

      home: const StudentList(),
    );
  }
}

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  String message = 'Student List';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'College Department',
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

          : Column(
              children: [
                const SizedBox(height: 10),

                Text(
                  message,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),

                    itemCount: students.length,

                    itemBuilder: (context, index) {
                      final student = students[index];

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            message = '${student['name']} card tapped';
                          });
                        },

                        child: Card(
                          margin: const EdgeInsets.only(
                            bottom: 15,
                          ),

                          color: student['favorite']
                              ? const Color(0xFFFFF0B3) : const Color(0xFFFFFDF5),

                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15),

                            side: const BorderSide(
                              color: Color(0xFFFFC107),
                              width: 2,
                            ),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(12),

                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment:CrossAxisAlignment.start,

                                  children: [
                                    CircleAvatar(
                                      radius: 30,

                                      backgroundImage:
                                          AssetImage(student['image'],
                                      ),
                                    ),

                                    const SizedBox(width: 12),

                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:CrossAxisAlignment.start,

                                        children: [
                                          Text(
                                            student['name'],
                                            style:
                                                const TextStyle(
                                              fontWeight:
                                                  FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),

                                          const SizedBox(
                                            height: 5,
                                          ),

                                          Text(
                                            'Student ID: ${student['studentId']}\n'
                                            'Course: ${student['course']}\n'
                                            'Year: ${student['year']}\n'
                                            'Age: ${student['age']}\n'
                                            'Hobby: ${student['hobby']}\n'
                                            'Email: ${student['email']}\n'
                                            'Favorite Subject: ${student['favoriteSubject']}',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 10),

                                const Divider(),

                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,

                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        student['favorite']
                                            ? Icons.favorite : Icons.favorite_border,

                                        color:
                                            student['favorite']
                                                ? Colors.red : Colors.grey,
                                      ),

                                      onPressed: () {
                                        setState(() {
                                          student['favorite'] = !student['favorite'];

                                          if (student['favorite']) {
                                            message = '${student['name']} added to favorites';
                                          } else {
                                            message = '${student['name']} removed from favorites';
                                          }
                                        });
                                      },
                                    ),

                                    IconButton(
                                      icon: const Icon(
                                        Icons.edit,
                                        color: Colors.blue,
                                      ),

                                      onPressed: () {
                                        showDialog(
                                          context: context,

                                          builder: (context) {
                                            return AlertDialog(
                                              title: const Text(
                                                'Edit Student',
                                                style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold,
                                                ),
                                              ),

                                              content: Text(
                                                'You selected ${student['name']} for editing.',
                                              ),

                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(
                                                      context,
                                                    );
                                                  },

                                                  child: const Text(
                                                    'Close',
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),

                                    IconButton(
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),

                                      onPressed: () {
                                        setState(() {
                                          students.remove(student);
                                          message = '${student['name']} deleted';
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}