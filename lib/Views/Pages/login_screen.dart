import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gr_project/Controller/auth_controller.dart';
import 'package:gr_project/Views/Pages/forgot_password_screen/email_screen.dart';

import '../Components/formField.dart';
import 'main_screens/Nav_screen.dart';
import 'signup_screen_user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordVis = true;
  bool rememberMe = false;

  final Authentication _auth = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/images/Login.png'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome back !',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'login to improve your mental health.',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              buildFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                label: 'Email Address',
                prefix: Icons.email_outlined,
                onSubmit: (value) {
                  print(value);
                },
                onChange: (value) {
                  print(value);
                },
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return 'Email Address must not be empty';
                  }
                  if (!value.contains('@') || !value.contains('.')) {
                    return 'Email Address is not valid';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              buildFormField(
                controller: passwordController,
                type: TextInputType.visiblePassword,
                label: 'Password',
                prefix: Icons.lock_outline,
                onSubmit: (value) {
                  print(value);
                },
                onChange: (value) {
                  print(value);
                },
                suffix: isPasswordVis
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                suffixPressed: () {
                  setState(() {
                    isPasswordVis = !isPasswordVis;
                  });
                },
                isPassword: isPasswordVis,
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return 'Password must not be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        rememberMe = !rememberMe;
                      });
                    },
                    child: const Text('Remember me'),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EmailScreen()),
                      );
                    },
                    child: const Text('Forget Password'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        try {
                          await _auth.login(
                            emailController.text,
                            passwordController.text,
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const myBottomNavBar(),
                            ),
                          );
                        } catch (e) {
                          String message;
                          if (e is FirebaseAuthException) {
                            if (e.code == 'user-not-found') {
                              message = 'No user found for that email.';
                            } else if (e.code == 'wrong-password') {
                              message =
                                  'Wrong password provided for that user.';
                            } else if (e.code == 'invalid-credential') {
                              message =
                                  'The supplied auth credential is incorrect, malformed or has expired.';
                            } else {
                              message = e.message!;
                            }
                          } else {
                            message = e.toString();
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(message),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      }
                    },
                    color: Color(0xFF2196F3),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text('Register'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
