import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Stack Widget',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                  alignment: Alignment.bottomRight,
                  child: const Text(
                    '1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 80,
                  width: 80,
                  alignment: Alignment.bottomRight,
                  child: const Text(
                    '2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 60,
                  width: 60,
                  alignment: Alignment.bottomRight,
                  child: const Text(
                    '3',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Container(
                  color: Colors.pink,
                  height: 250,
                  width: 250,
                  alignment: Alignment.center,
                  child: const Text(
                    'Container',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Container(
                    color: Colors.purple,
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    child: const Text(
                      'Container 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    child: const Text(
                      'Container 2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    child: const Text(
                      'Container 3',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.orange,
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    child: const Text(
                      'Container 4',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  'https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:auto/h:auto/q:75/https://bleedingcool.com/wp-content/uploads/2022/07/Superman-Animated.jpg',
                  fit: BoxFit.fill,
                  height: 180,
                  width: 300,
                ),
                const Positioned(
                  bottom: -28,
                  right: 0,
                  left: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFF72798),
                    radius: 30,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
