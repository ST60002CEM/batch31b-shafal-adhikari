import 'package:flutter/material.dart';
import 'package:wandroz/components/feed/feed_Item.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.9,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 130,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/cover.webp',
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Add story',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/cover.webp',
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Suman Dangol',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/cover.webp',
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Abishek Shah',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/cover.webp',
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Abishek Shah',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/cover.webp',
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Abishek Shah',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const FeedItem(),
            const SizedBox(
              height: 15,
            ),
            const FeedItem(),
            const SizedBox(
              height: 15,
            ),
            const FeedItem(),
            const SizedBox(
              height: 15,
            ),
            const FeedItem(),
          ],
        ),
      ),
    );
  }
}
