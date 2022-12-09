import 'package:flutter/material.dart';
import 'package:my_flutter_learning/routes/app_route.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              const Text('Welcome',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                child: Column(
                  children: [
                    const TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter username', labelText: 'Username')),
                    const SizedBox(height: 12),
                    const TextField(
                      obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter password', labelText: 'Password')),
                    const SizedBox(height: 36),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoute.homeRoute);
                      },
                      style: TextButton.styleFrom(
                        minimumSize: const Size(200, 50)
                      ),
                      child: const Text('Login'),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
