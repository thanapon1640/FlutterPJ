import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:presentuxui/pages/home_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<dynamic> signInWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final UserCredential userCredential =
        await auth.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 190,
          ),
          Container(
            margin: const EdgeInsets.all(30),
            child: const Text(
              "ลงชื่อเข้าใช้งานผ่าน Google Accout",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          // ignore: avoid_unnecessary_containers
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: GestureDetector(
              onTap: () async {
                await signInWithGoogle();
                if (mounted) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const HomePage()));
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/img/google.png',
                    scale: 30,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "ดำเนินการต่อด้วย Google",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/img/facebook.png',
                    scale: 12,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "ดำเนินการต่อด้วย Facebook",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
