import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ILiked App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Discover',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32.0,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/a/a0/Pierre-Person.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 450,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                        ),
                      ),
                      child: ListTile(
                        title: const Text('Pedro Oliveira, 25', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25.0)),
                        subtitle: const Text('Analista de Negócios, Mega', style: TextStyle(color: Colors.white, fontSize: 15.0)),
                        trailing: const Text('2.5mil', style: TextStyle(color: Colors.white, fontSize: 15.0)),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 110,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text('Ele Curtiu Você! 🔥', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.pink, size: 32.0),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite, color: Colors.pink, size: 64.0),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.message, color: Colors.pink, size: 32.0),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.expand_circle_down, color: Colors.pink),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: '',
          ),
        ],
      ),
    );
  }
}
