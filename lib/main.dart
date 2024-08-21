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
      title: 'My counter app functionality',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Center(
                    child: Container(
                      height: 700,
                      width: 300,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 235, 235)),
                    ),
                  ),
                ),
                Positioned(
                  top: 44,
                  left: 110,
                  child: Center(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                          color: const Color.fromARGB(255, 191, 192, 194)),
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 43,
                  child: Center(
                    child: Container(
                      height: 150,
                      width: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                          color: const Color.fromARGB(255, 14, 58, 232)),
                    ),
                  ),
                ),
                Positioned(
                  top: 350,
                  left: 43,
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100)),
                          color: const Color.fromARGB(255, 14, 58, 232)),
                    ),
                  ),
                ),
                Positioned(
                  top: 540,
                  left: 110,
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40)),
                          color: const Color.fromARGB(255, 191, 192, 194)),
                    ),
                  ),
                ),
                Positioned(
                  top: 430,
                  left: 82,
                  child: Center(
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100)),
                          color: const Color.fromARGB(255, 14, 58, 232)),
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 54,
                  child: Center(
                    child: Container(
                      // padding: EdgeInsets.all(10),
                      // margin: EdgeInsets.only(left: 10,right: ),
                      height: 100,
                      width: 260,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 180,
                  left: 150,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myCount++;
                        });
                      },
                      child: CircleAvatar(
                        radius: 40,
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 300,
                  left: 100,
                  child: Center(
                    child: CircleAvatar(
                      radius: 20,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            myCount--;
                          });
                        },
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 300,
                  right: 100,
                  child: Center(
                    child: CircleAvatar(
                      radius: 20,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            myCount = 0;
                          });
                        },
                        child: Text(
                          'Reset',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  right: 60,
                  child: Center(
                    child: Text(
                      '$myCount',
                      style:
                          TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 37,
                    child: Text(
                      'Created by Shahid Saquafi',
                      style:
                          TextStyle(fontSize: 6, fontStyle: FontStyle.italic),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
