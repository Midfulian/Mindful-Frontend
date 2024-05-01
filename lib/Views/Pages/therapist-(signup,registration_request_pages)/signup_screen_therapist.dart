import 'package:flutter/material.dart';
import 'package:gr_project/Controller/auth_controller.dart';
import 'package:gr_project/Model/SignupUserRequest.dart';
import 'package:gr_project/Views/Pages/user&therapist-(start,login,reset_password,onBoarding)/login_screen.dart';
import 'package:file_picker/file_picker.dart';

class SignupScreenTherapist extends StatefulWidget {
  const SignupScreenTherapist({super.key});

  @override
  State<SignupScreenTherapist> createState() => _SignupScreenTherapistState();
}

class _SignupScreenTherapistState extends State<SignupScreenTherapist> {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var cityController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isVisible = true;

  final Authentication _auth = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Stack(
                alignment: Alignment.center,
                children: [
                  Image(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/Vector 623.png',
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hello !',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        ' Register now to improve your mental',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        'health and change your life.',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 10,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 9),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 175,
                          child: TextFormField(
                            controller: firstNameController,
                            keyboardType: TextInputType.name,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'First Name must not be empty';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'FirstName',
                              prefixIcon: const Icon(
                                Icons.account_circle,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade700,
                                  width: 1,
                                ),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 175,
                          child: TextFormField(
                            controller: lastNameController,
                            keyboardType: TextInputType.name,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Last Name must not be empty';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'LastName',
                              prefixIcon: const Icon(
                                Icons.account_circle,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade700,
                                  width: 1,
                                ),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 9),
                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Email  must not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey.shade700,
                              width: 1,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 9),
                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Phone  must not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Phone number',
                          prefixIcon: const Icon(
                            Icons.phone_callback_outlined,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey.shade700,
                              width: 1,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 9),
                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Password  must not be empty';
                          }
                          return null;
                        },
                        obscureText: isVisible,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: const Icon(
                            Icons.lock_outline_rounded,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            icon: Icon(
                              isVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey.shade700,
                              width: 1,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      children: [
                        Expanded(child: UploadBox(title: "National ID card",icon: Icons.photo_library_outlined)),
                        Expanded(child: UploadBox(title: "Practice License ID",icon: Icons.insert_drive_file_outlined)),
                        Expanded(child: UploadBox(title: "Professional title ID",icon: Icons.library_add_check_rounded)),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(24, 145, 196, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            try {
                              bool signUpSuccess = await _auth.signUp(
                                SignUserRequest(
                                  first_name: firstNameController.text,
                                  last_name: lastNameController.text,
                                  email: emailController.text,
                                  phoneNumber: phoneController.text,
                                  languagePreference: "en",
                                  country: "EG",
                                  photoURL: 'http://www.google.com/ziad',
                                  profile_picture: 'http://www.google.com/ziad',
                                ),
                                passwordController.text,
                              );
                              if (signUpSuccess) {
                                // event to navigate to the next screen
                              }
                            } catch (e) {
                              print(e);
                            }
                          }
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w400),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UploadBox extends StatefulWidget {
  final String title;
  final IconData icon;

  const UploadBox({required this.title, required this.icon, Key? key}) : super(key: key);

  @override
  _UploadBoxState createState() => _UploadBoxState();
}

class _UploadBoxState extends State<UploadBox> {
  String? fileName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        FilePickerResult? result = await FilePicker.platform.pickFiles();

        if(result != null) {
          PlatformFile file = result.files.first;

          setState(() {
            fileName = file.name;
          });

          // You can now upload the file to a server or use it locally
        } else {
          // User canceled the picker
        }
      },
      child: Column(
        children: [
          Icon(widget.icon, size: 50),
          Text(widget.title),
          if (fileName != null) ...[
            Text(fileName!),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  fileName = null;
                });
              },
            ),
          ],
        ],
      ),
    );
  }
}
