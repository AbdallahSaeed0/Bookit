import 'package:bookit/widgets.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTitle,
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Registeration page",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "You're now creating an account as",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    InputField(
                      label: "Full Name",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InputField(
                      label: "Email",
                    ),
                    const SizedBox(height: 10),
                    InputField(
                      obscuretext: true,
                      label: "Password",
                    ),
                    const SizedBox(height: 10),
                    InputField(
                      obscuretext: true,
                      label: "Confirm Password",
                    ),
                    const SizedBox(height: 25),
                    MaterialButton(
                      onPressed: () {},
                      color: const Color.fromARGB(255, 168, 185, 230),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 130, vertical: 15),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("login");
                            },
                            child: const Text(
                              "Log in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      Color.fromRGBO(93, 125, 212, 1),
                                  color: Color.fromRGBO(93, 125, 212, 1)),
                            ))
                      ],
                    )
                  ],
                ))
          ]),
    );
  }
}
