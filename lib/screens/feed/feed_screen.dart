import 'package:flutter/material.dart';
import 'package:wandroz/components/feed/feed.dart';
import 'package:wandroz/components/shared/common_appbar.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return const CommonAppbar(
      child: Feed(),
    );
  }
}
