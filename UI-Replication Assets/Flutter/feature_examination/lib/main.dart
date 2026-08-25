import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String image1 = 'assets/sova.png';
String name1 = 'Sova';

String image2 = 'assets/reyna.png';
String name2 = 'Reyna';

String image3 = 'assets/raze.png';
String name3 = 'Raze';

String image4 = 'assets/phoenix.png';
String name4 = 'Phoenix';

String image5 = 'assets/cypher.png';
String name5 = 'Cypher';

String image6 = 'assets/clove.png';
String name6 = 'Clove';

String image7 = 'assets/chamber.png';
String name7 = 'Chamber';

String image8 = 'assets/brimstone.png';
String name8 = 'Brimstone';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Match Details',

      home: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Match Details',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),


        body: Padding(
          padding: const EdgeInsets.all(20),

          child: Card(
            elevation: 8,

            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                children: [

                  ClipOval(
                    child: Image.asset(
                      image1,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'My Team',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

            
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.bar_chart,
                        size: 25,
                      ),

                      SizedBox(width: 30),

                      Icon(
                        Icons.skull,
                        size: 25,
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
