import 'package:flutter/material.dart';
import 'package:wandroz/components/Signup.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 50),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 30,
              ),
              const Signup()
            ],
          ),
        ),
      ),
    );
  }
}
