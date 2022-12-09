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
  final _formKey = GlobalKey<FormState>();

  onClickLogin(BuildContext context) async{
    if(_formKey.currentState != null && _formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, AppRoute.homeRoute);
      setState(() {
        isLoading = false;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Enter username', labelText: 'Username'),
                        validator: (value) {
                          if(value != null && value.isNotEmpty) {
                            return null;
                          }
                          return 'This field can not be empty!';

                        },
                        onChanged: (value) {
                          setState(() {
                            username = value;
                          });
                        },
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value != null && value.length < 5) {
                              return 'Password must be at lest 5 charters';
                            }

                            if(value != null && value.isNotEmpty) {
                              return null;
                            }

                            return 'This field can not be empty!';

                          },
                          decoration: const InputDecoration(
                              hintText: 'Enter password', labelText: 'Password')),
                      const SizedBox(height: 36),
                      Material(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(isLoading ? 50 : 8),
                        child: InkWell(
                          onTap: () => onClickLogin(context),
                          child: AnimatedContainer(
                            width: isLoading ? 50 : 200,
                            height: 50,
                            alignment: Alignment.center,
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
          ),
        ));
  }
}
