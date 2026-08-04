import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sunflower Flutter App',
      home: Scaffold(
        backgroundColor: const Color(0xFFFFF8E7),

        appBar: AppBar(
          backgroundColor: const Color(0xFFF4C430),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "🌻 My First Flutter Application 🌻",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.brown,
            ),
          ),
        ),

        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                elevation: 12,
                color: const Color(0xFFFFFDF5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(
                    color: Color(0xFFF4C430),
                    width: 3,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 40,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Circular Image
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFFF4C430),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(5),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/sunflower.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "🌻",
                        style: TextStyle(fontSize: 36),
                      ),

                      const SizedBox(height: 15),

                      const Text(
                        "Krylle Jane Y. Racaza",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF6D4C41),
                        ),
                      ),

                      const SizedBox(height: 18),

                      const Text(
                        "BSIT - 3",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8D6E63),
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "My First Flutter Application",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF5D4037),
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "August 4, 2026",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF795548),
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "✨ Almost There ✨",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFFE0A106),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}