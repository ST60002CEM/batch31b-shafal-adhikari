import 'package:flutter/material.dart';
import 'package:wandroz/constants.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 238, 238, 238),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/cover.webp',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shafal Adhikari',
                    style: TextStyle(
                        fontSize: 16,
                        color: kTextColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rasuwa, Nepal',
                    style: TextStyle(fontSize: 15, color: kTextColor),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Image.asset('assets/cover.webp'),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite_outline_rounded,
                    size: 28,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    '253',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Row(
                children: [
                  Icon(
                    Icons.comment_outlined,
                    size: 28,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    '10',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Row(
                children: [
                  Icon(
                    Icons.send_outlined,
                    size: 28,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    '253',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
