import 'package:flutter/material.dart';
import 'package:sing_task/screen/profile.dart';
import 'package:sing_task/screen/signin.dart';
import 'package:sing_task/screen/userdata.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String selectedGender = "Male";
  bool rememberMe = false;
  int? selectedStatus;
  double sliderValue = 0.5;
  bool termsAgreed = false;
  bool notificationsEnabled = false;
  String notes = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Padding(
        padding: const EdgeInsets.all(5),
        child: Scaffold(
          backgroundColor: const Color(0xffFEF6DB),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 106, 153, 234),
            title: const Text("Sign Up"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage("assest/imges/Bug.png"),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'BugCrowd',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 24),

                // Email TextField
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    controller: emailController, // Use controller
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIconColor: Colors.blue,
                      hintText: "YourAcc@x.com",
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),

                // Password TextField
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    controller: passwordController, // Use controller
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      prefixIconColor: Colors.blue,
                      labelText: "Password",
                      hintText: "******",
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Remember Me",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    Checkbox(
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value!;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: DropdownButtonFormField<int>(
                    decoration: const InputDecoration(
                      labelText: "Status",
                      border: OutlineInputBorder(),
                    ),
                    value: selectedStatus,
                    items: const [
                      DropdownMenuItem(value: 1, child: Text("Researcher")),
                      DropdownMenuItem(value: 2, child: Text("Company")),
                      DropdownMenuItem(value: 3, child: Text("Customer")),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedStatus = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Male",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    Radio(
                      value: "Male",
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                    const Text(
                      "Female",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    Radio(
                      value: "Female",
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Age"),
                    Row(
                      children: [
                        Text("${sliderValue.round()}"),
                        Slider(
                          value: sliderValue,
                          min: 0,
                          max: 100,
                          divisions: 100,
                          label: "${sliderValue.round()} years",
                          onChanged: (value) {
                            setState(() {
                              sliderValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "I Agree To The Terms",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    Checkbox(
                      value: termsAgreed,
                      onChanged: (value) {
                        setState(() {
                          termsAgreed = value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Receive Notifications",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                    Switch(
                      value: notificationsEnabled,
                      onChanged: (value) {
                        setState(() {
                          notificationsEnabled = value;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    maxLength: 1000,
                    maxLines: 3,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      notes = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Notes",
                      prefixIconColor: Colors.blue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                  onPressed: () {
                    String email = emailController.text;
                    String password = passwordController.text;

                    if (email.isNotEmpty && password.isNotEmpty) {
                      User newUser = User(
                        email: emailController.text,
                        password: passwordController.text,
                        gender: selectedGender,
                        status: selectedStatus ?? 1,
                        age: sliderValue,
                        termsAgreed: termsAgreed,
                        notificationsEnabled: notificationsEnabled,
                        notes: notes,
                      );
                      DATA.addUser(newUser);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage(
                                  user: newUser,
                                )),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: const Text(
                                "Please fill all fields."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 34, 48),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 400, // Specify width
                  child: Divider(
                    color: Colors.blue, // Divider color
                    thickness: 2, // Thickness of the divider line
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(" Have Account"),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signin(),
                          ),
                        );
                      },
                      child: const Text("LogIn "),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
