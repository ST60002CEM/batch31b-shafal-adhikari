import 'package:flutter/material.dart';
import 'package:wandroz/screens/auth/login_screen.dart';

import '../../../constants.dart';

class Signup extends StatefulWidget {
  const Signup({
    Key? key,
  }) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final idController = TextEditingController();

  final passController = TextEditingController();
  @override
  void dispose() {
    idController.dispose();
    passController.dispose();
    super.dispose();
  }

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Signup',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: kTextPColor,
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  child: TextFormField(
                    controller: idController,
                    decoration: const InputDecoration(
                      hintText: 'Full Name',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      // ignore: unnecessary_const
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      prefixIcon: Icon(Icons.edit),
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  child: TextFormField(
                    controller: idController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      // ignore: unnecessary_const
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      prefixIcon: Icon(Icons.account_circle),
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  child: TextFormField(
                    controller: passController,
                    decoration: const InputDecoration(
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        prefixIcon: Icon(Icons.lock)),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/profile');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBtnColor,
                    fixedSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                  ),
                  child: isLoading
                      ? const CircularProgressIndicator()
                      : Text(
                          'Signup',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: backColor),
                        ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/login');
                  },
                  child: const Text(
                    "Already have an account? Login",
                    style: TextStyle(
                        color: kColor1,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
