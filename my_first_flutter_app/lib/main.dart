import 'package:flutter/material.dart';

void main() {
  students.sort(
    (a, b) => a['name'].compareTo(b['name']),
  );

  runApp(const MyApp());
}

List<Map<String, dynamic>> defaultStudents() {
  return [
    {
      'image': 'assets/profile1.png',
      'name': 'Krylle Jane - xxs',
      'course': 'BSIT',
      'year': '3rd Year',
      'age': 20,
      'hobby': 'Dancing',
      'studentId': '2023001',
      'email': 'krylle@example.com',
      'favoriteSubject': 'Programming',
      'favorite': false,
      'active': true,
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
      'active': true,
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
      'active': false,
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
      'active': true,
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
      'active': false,
    },
  ];
}

List<Map<String, dynamic>> students = defaultStudents();

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
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadStudents();
  }

  Future<void> loadStudents() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 10));

    if (!mounted) return;

    setState(() {
      isLoading = false;
      message = 'Student List';
    });
  }

  void restoreStudents() { //nakalimtan ang restore HAHHAAHHA
    setState(() {
      students = defaultStudents();
      students.sort((a, b) => a['name'].compareTo(b['name']));
      message = 'Students restored';
    });
  }

  void deleteAllStudents() {
    setState(() {
      students.clear();
    });
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'College Department',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            tooltip: 'Delete all students',
            icon: const Icon(Icons.delete_sweep),
            onPressed: deleteAllStudents,
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: Color(0xFFFFC107)),
            SizedBox(height: 20),
            Text(
              'Loading students...',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
    }

    if (students.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.people_outline,
              size: 70,
              color: Color(0xFFFFC107),
            ),
            const SizedBox(height: 15),
            const Text(
              'No students found.',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'The student list is empty.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: restoreStudents,
              icon: const Icon(Icons.restore),
              label: const Text('Restore Students'),
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFFC107),
              foregroundColor: Colors.black,
              ),
            )
          ],
        ),
      );
    }

    return Column(
      children: [
        const SizedBox(height: 10),
        Text(
          message,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: students.length,
            itemBuilder: (context, index) {
              return _buildCard(students[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAvatar(Map<String, dynamic> student) {
    return GestureDetector(
      onTap: () {
        setState(() {
          student['active'] = !student['active'];
          message = student['active']
              ? '${student['name']} is now Active'
              : '${student['name']} is now Inactive';
        });
      },
      child: Tooltip(
        message: student['active'] ? 'Active' : 'Inactive',
        child: Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(student['image']),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: student['active'] ? Colors.green : Colors.grey,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(Map<String, dynamic> student) {
    return GestureDetector(
      onTap: () {
        setState(() {
          message = '${student['name']} card tapped';
        });
      },
      child: Card(
        margin: const EdgeInsets.only(bottom: 15),
        color: student['favorite']
            ? const Color(0xFFFFF0B3)
            : const Color(0xFFFFFDF5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Color(0xFFFFC107), width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildAvatar(student),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                student['name'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            if (student['favorite'])
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 24,
                              ),
                          ],
                        ),
                        const SizedBox(height: 5),
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
              if (!student['active'])
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE0E0),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.warning_amber, color: Colors.red),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Warning: This student is inactive.',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 10),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      student['favorite']
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: student['favorite'] ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        student['favorite'] = !student['favorite'];
                        message = student['favorite']
                            ? '${student['name']} added to favorites'
                            : '${student['name']} removed from favorites';
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.blue),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text(
                              'Edit Student',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            content: Text(
                              'You selected ${student['name']} for editing.',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  if (student['active'])
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
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
  }
}