import 'package:flutter/material.dart';
import 'package:wandroz/components/feed/feed.dart';
import 'package:wandroz/components/user/profile.dart';
import 'package:wandroz/constants.dart';
import 'package:wandroz/screens/user/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const Feed(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
    const ProfileScreen(),
  ];
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
        backgroundColor: backColor,
        currentIndex: _currentIndex,
        onTap: (value) => {
          setState(() {
            _currentIndex = value;
          })
        },
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
        child: _screens[_currentIndex],
      ),
    );
  }
}
