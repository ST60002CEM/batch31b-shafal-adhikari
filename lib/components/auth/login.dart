import 'package:flutter/material.dart';
import 'package:wandroz/screens/auth/signup_screen.dart';
import '../../../constants.dart';

class Login extends StatefulWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: kTextPColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Center(
                  child: Text(
                    'Welcome back to the journey throughout the world',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: kTextColor,
                        fontSize: 18,
                        height: 1.5,
                        letterSpacing: 0.6),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(10, 40, 10, 10),
                child: TextFormField(
                  controller: idController,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    // ignore: unnecessary_const
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.account_circle),
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 30),
                child: TextFormField(
                  controller: passController,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(Icons.lock)),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () async {},
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
                          'Login',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: backColor),
                        ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () async {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 9, 54, 131),
                    fixedSize:
                        Size(MediaQuery.of(context).size.width * 0.8, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  icon: const Icon(
                    Icons.facebook,
                    size: 24,
                  ),
                  label: isLoading
                      ? const CircularProgressIndicator()
                      : Text(
                          'Login with Facebook',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: backColor, fontSize: 18),
                        ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () async {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize:
                        Size(MediaQuery.of(context).size.width * 0.8, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  icon: const Icon(
                    Icons.apple,
                    size: 24,
                  ),
                  label: isLoading
                      ? const CircularProgressIndicator()
                      : Text(
                          'Login with Apple',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: backColor, fontSize: 18),
                        ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Don't have an account? ",
                  style: TextStyle(fontSize: 20, color: kTextPColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  },
                  child: const Text(
                    "SignUp",
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
