import 'package:flutter/material.dart';
import 'package:sing_task/screen/signin.dart';
import 'package:sing_task/screen/signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        //backgroundColor: const Color(0xff46322b),
        backgroundColor: const Color.fromARGB(255, 106, 153, 234),
        title: const Text(
          "Security",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 190,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 180,
                backgroundImage: AssetImage("assest/imges/Bugcrowd.png"),
              ),
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            "CyberSecurity Is The Future",
            style: TextStyle(
              color: Color(0xFF558b38),
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Signin(),
                    ),
                  );
                },
                child: const Text("LogIn"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Signup(),
                    ),
                  );
                },
                child: const Text("Create "),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
