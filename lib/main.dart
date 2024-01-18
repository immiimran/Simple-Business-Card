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
      title: 'Business CardUI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Business CardUI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 2),
                blurRadius: 2.0,
                spreadRadius: 3.0,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // This is the First Column
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://scontent.fdac24-4.fna.fbcdn.net/v/t1.6435-9/134419409_103162498389156_1271666673422825332_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=be3454&_nc_ohc=-LXienRAc6cAX8gHMZG&_nc_ht=scontent.fdac24-4.fna&oh=00_AfCAqVjLuSWBsTctt0OevVYSFKFeRKz6JVNg0OT4hDNfMQ&oe=658BE824"),
                      ),
                    ),
                  ),
                  const Text(
                    "Imran Immi",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const Text(
                    "Flutter Developer",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
              Container(
                height: 220,
                width: 2,
                color: Colors.black,
              ),
              // This is the second Column
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Pakundia Kishoreganj"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(
                        width: 8,
                      ),
                      Text("+123456789"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.mail),
                      SizedBox(
                        width: 8,
                      ),
                      Text("yourmail@email.com"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(
                        width: 8,
                      ),
                      Text("fb.com/imminpk"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.web),
                      SizedBox(
                        width: 8,
                      ),
                      Text("yourwebname.com"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
