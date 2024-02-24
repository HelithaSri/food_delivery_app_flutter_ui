import 'package:flutter/material.dart';
import 'package:food_delivery/pages/Home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0x000d0d0d),
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Pattern.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    colors: [Colors.transparent, Colors.black],
                    stops: [0.2, 1.0]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/Logo.png",
                    alignment: Alignment.center,
                  ),
                  const Text(
                    "Login To Your Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          controller: usernameController,
                          style: const TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w400),
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white10,
                            focusedBorder: OutlineInputBorder(
                              // borderSide: BorderSide(
                              //   color: Colors.white54,
                              // ), // Yellow border color when focused
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              // borderSide: BorderSide(
                              //   color: Colors.yellow,
                              // ), // Yellow border color when not focused
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          controller: passwordController,
                          style: const TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w400),
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white10,
                            focusedBorder: OutlineInputBorder(
                              // borderSide: BorderSide(
                              //   color: Colors.white54,
                              // ), // Yellow border color when focused
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              // borderSide: BorderSide(
                              //   color: Colors.yellow,
                              // ), // Yellow border color when not focused
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Or Continue With",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 57,
                          width: 152,
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/facebook.png",
                                alignment: Alignment.center,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Facebook",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 57,
                          width: 152,
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/google.png",
                                alignment: Alignment.center,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Google",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Forgot Your Password?",
                    style: TextStyle(color: Colors.green),
                  ),
                  GestureDetector(
                    //Todo: Remove Later
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    ),
                    child: Container(
                      height: 57,
                      width: 157,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF53E88B),
                            Color(0xFF15BE77),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
