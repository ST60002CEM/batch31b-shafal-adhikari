import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget {
  final Widget child;
  const CommonAppbar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 80),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: AppBar(
            backgroundColor:
                Colors.transparent, // Set background color to transparent
            elevation: 0,
            // Remove shadow
            leading: Image.asset(
              'assets/logo.png',
            ),
            title: const Text(
              'Wandroz',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color.fromARGB(255, 50, 48, 48)),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                iconSize: 32,
                onPressed: () {
                  // Handle search action
                },
              ),
              IconButton(
                icon: const Icon(Icons.inbox_outlined),
                iconSize: 32,
                onPressed: () {
                  // Handle settings action
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: ClipOval(
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(color: Colors.amber),
                child: const Icon(
                  Icons.add,
                  size: 30,
                  color: Color.fromARGB(255, 87, 87, 87),
                ),
              ),
            ),
            label: 'Post',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.face_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
        child: child,
      ),
    );
  }
}
