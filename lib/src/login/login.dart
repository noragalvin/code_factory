import 'package:code_factory/src/profile/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/images/login_img.png",
            fit: BoxFit.fill,
            // width: window.physicalSize.width,
            height: 264,
          ),
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF3C3A36),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Login with social networks",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF78746D),
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(6),
                child: CupertinoButton(
                  onPressed: () {  },
                  padding: const EdgeInsets.all(0),
                  minSize: 0,
                  child: Image.asset(
                    "assets/images/social_fb.png",
                    fit: BoxFit.fill,
                    // width: window.physicalSize.width,
                    height: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: CupertinoButton(
                  onPressed: () {  },
                  padding: const EdgeInsets.all(0),
                  minSize: 0,
                  child: Image.asset(
                    "assets/images/social_instagram.png",
                    fit: BoxFit.fill,
                    // width: window.physicalSize.width,
                    height: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: CupertinoButton(
                  onPressed: () {
                    signInWithGoogle();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfileView()),
                    );
                  },
                  padding: const EdgeInsets.all(0),
                  minSize: 0,
                  child: Image.asset(
                    "assets/images/social_google.png",
                    fit: BoxFit.fill,
                    // width: window.physicalSize.width,
                    height: 40,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
