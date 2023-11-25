import 'package:flutter/material.dart';
import 'package:wandroz/components/user/image_view.dart';
import 'package:wandroz/constants.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/cover.webp',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 10,
                bottom: -50,
                child: ClipOval(
                  child: Image.asset(
                    'assets/cover.webp',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Shafal Adhikari',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  '@safaladhikary',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: TabBar(
                            labelColor: Colors.white,
                            unselectedLabelColor: kTextColor,
                            indicator: BoxDecoration(
                              color: Color.fromARGB(255, 188, 68, 8),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            indicatorColor: Colors.white,
                            tabs: [
                              Tab(
                                icon: Icon(
                                  Icons.grid_4x4_rounded,
                                  // color: kTextColor,
                                  size: 28,
                                ),
                              ),
                              Tab(
                                icon: Icon(
                                  Icons.video_collection_outlined,
                                  // color: kTextColor,
                                  size: 28,
                                ),
                              ),
                              Tab(
                                icon: Icon(
                                  Icons.location_pin,
                                  // color: kTextColor,
                                  size: 28,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              ImageView(),
                              ImageView(),
                              ImageView(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
