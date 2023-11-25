import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      // decoration: const BoxDecoration(color: Colors.black),
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            Image.asset(
              'assets/cover.webp',
              width: MediaQuery.of(context).size.width * 0.43,
              height: 200,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/cover.webp',
              width: MediaQuery.of(context).size.width * 0.43,
              height: 200,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/cover.webp',
              width: MediaQuery.of(context).size.width * 0.43,
              height: 200,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/cover.webp',
              width: MediaQuery.of(context).size.width * 0.43,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
