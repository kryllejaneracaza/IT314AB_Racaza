import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String? name1 = "Krylle Jane";
String? course1 = "BSIT - 3";
int? age1 = 20;
String? hobby1 = null;
String? image1 = "assets/profile1.png";

String? name2 = "Kayra Ylaya";
String? course2 = "BSHM - 2";
int? age2 = 19;
String? hobby2 = "Dancing";
String? image2 = "assets/profile2.png";

String? name3 = "Kristine Ybanez";
String? course3 = null;
int? age3 = 18;
String? hobby3 = "Gaming";
String? image3 = "assets/profile3.png";

String? name4 = "Maria Cristina";
String? course4 = "BSTM - 4";
int? age4 = 21;
String? hobby4 = "Reading";
String? image4 = "assets/profile4.png";

String? name5 = "Anna Belle";
String? course5 = "BSIS - 3";
int? age5 = null;
String? hobby5 = "Reading";
String? image5 = "assets/profile5.png";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Five Profiles',
      home: Scaffold(
        backgroundColor: const Color(0xFFFFF8E7),

        appBar: AppBar(
          title: const Text("My Profiles"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [

              Card(
                margin: const EdgeInsets.all(12),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Image.asset(
                        image1 ?? "Not provided",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        name1 ?? "Not provided",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Course: ${course1 ?? "Not provided"}"),
                      Text("Age: ${age1 ?? "Not provided"}"),
                      Text("Hobby: ${hobby1 ?? "Not provided"}"),
                    ],
                  ),
                ),
              ),

              Card(
                margin: const EdgeInsets.all(12),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Image.asset(
                        image2 ?? "Not provided",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        name2 ?? "not provided",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Course: ${course2 ?? "Not provided"}"),
                      Text("Age: ${age2 ?? "Not provided"}"),
                      Text("Hobby: ${hobby2 ?? "Not provided"}"),
                    ],
                  ),
                ),
              ),

              Card(
                margin: const EdgeInsets.all(12),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Image.asset(
                        image3 ?? "Not provided",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        name3 ?? "not provided",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Course: ${course3 ?? "Not provided"}"),
                      Text("Age: ${age3 ?? "Not provided"}"),
                      Text("Hobby: ${hobby3 ?? "Not provided"}"),
                    ],
                  ),
                ),
              ),

              Card(
                margin: const EdgeInsets.all(12),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Image.asset(
                        image4 ?? "Not provided",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        name4 ?? "not provided",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     Text("Course: ${course4 ?? "Not provided"}"),
                      Text("Age: ${age4 ?? "Not provided"}"),
                      Text("Hobby: ${hobby4 ?? "Not provided"}"),
                    ],
                  ),
                ),
              ),

              Card(
                margin: const EdgeInsets.all(12),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Image.asset(
                        image5 ?? "Not provided",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        name5 ?? "not provided",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Course: ${course5 ?? "Not provided"}"),
                      Text("Age: ${age5 ?? "Not provided"}"),
                      Text("Hobby: ${hobby5 ?? "Not provided"}"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}