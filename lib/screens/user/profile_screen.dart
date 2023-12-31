import 'package:flutter/material.dart';
import 'package:wandroz/components/user/profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(length: 3, child: Profile());
  }
}
