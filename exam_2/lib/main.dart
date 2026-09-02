import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Profile{
  String? status;
  String? name;
Profile({
  this.status,
  this.name,
}
);
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EXAM 2',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 65, 65, 65),
      ),
      home: const MyHomePage(title: 'Exam 2'),
    );
  }
}

List<Profile> valorant = [
  Profile(status:'Online - VALORANT', name: 'Miss'),
  Profile(status:'Playing - VALORANT', name: 'Miss'),
  Profile(status:'Playing - VALORANT', name: 'Miss'),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget profileValorant(Profile profile) {
      return
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          horizontal: 16,
          vertical: 10),
          child: Row(children: [
            Card(
              child:CircleAvatar(
                radius:26,
                backgroundColor: Colors.white,
                child: const Icon(
                  Icons.person, 
                  color: Colors.red,
                  size:15,
                ),
              ),
            ),
              Column(
                children: [
                Text(profile.name ?? "Miss", 
                style: TextStyle(
                  color: Colors.white,
                ))
              ],
              ),
          ],
          )
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Social',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: 'arial',
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'Friends',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'sans-serif',
                ),
              ),
              Text(
                'Messages',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontFamily: 'sans-serif',
                ),
              ),
              Text(
                'Socials',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontFamily: 'sans-serif',
                ),
              ),
            ],
          ),
          const Divider(color: Colors.grey,  thickness: 1,),

          Container(
            padding:const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),
            decoration:BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
                size:30,
              ),
              SizedBox(width:20),

              Text(
                'Search',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'sans-serif',
              ),
              ),
            ],
          ),
          ),
          Container(
            padding:const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),
            child: Row(
              children:[
                Text(
                'Valorant',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'arial',
              ),
              ),
              SizedBox(width:20),

              Text(
                '3',
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontFamily: 'arial',
              ),
              ),
              SizedBox(width:20),
              ]
            ),
          ),
          Container(
            padding:const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),








          ),

            profileValorant(valorant[0]),
            profileValorant(valorant[1]),
            profileValorant(valorant[2]),


        ]
      ),
    );
  }
}




