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
          title: const Text(
            '🌻 My First Flutter Application 🌻',
          ),
        ),

        body: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                children: [

                  ClipOval(
                    child: Image.asset(
                      'assets/sunflower.png',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'My First Flutter Application',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Krylle Jane Y. Racaza',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'BSIT - 3',
                    style: TextStyle(fontSize: 20),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'August 11, 2026',
                    style: TextStyle(fontSize: 15),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Flexible(
                        child: Text(
                          'Beauty and the Beast',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      SizedBox(width: 10),

                      Text(
                        'Belle',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),

                  const Divider(),

                  Card(
                    margin: const EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(20),

                      child: Column(
                        children: [

                          const Text(
                            'My Favorites',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            'Wattpad',
                            style: TextStyle(fontSize: 20),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            'French Fries',
                            style: TextStyle(fontSize: 20),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            'Tangled',
                            style: TextStyle(fontSize: 20),
                          ),

                          const SizedBox(height: 8),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Yellow',
                                style: TextStyle(fontSize: 18),
                              ),

                              SizedBox(width: 10),

                              Text(
                                'White',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),

                          const SizedBox(height: 15),

                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Click to know more',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}