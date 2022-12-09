import 'package:flutter/material.dart';

import '../routes/app_route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var username = '';
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/login_bg.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Text('Welcome $username',
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                          hintText: 'Enter username', labelText: 'Username'),
                      onChanged: (value) {
                        setState(() {
                          username = value;
                        });
                      },
                    ),
                    const SizedBox(height: 12),
                    const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter password', labelText: 'Password')),
                    const SizedBox(height: 36),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          isLoading = true;
                        });

                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, AppRoute.homeRoute);
                      },
                      child: AnimatedContainer(
                        width: isLoading ? 50 : 200,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                                BorderRadius.circular(isLoading ? 50 : 8)),
                        duration: const Duration(seconds: 1),
                        child: isLoading
                            ? const Icon(Icons.done, color: Colors.white)
                            : const Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, AppRoute.homeRoute);
                    //   },
                    //   style: TextButton.styleFrom(
                    //     minimumSize: const Size(200, 50)
                    //   ),
                    //   child: const Text('Login'),
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
