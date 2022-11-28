import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8), // Border width
                decoration: const BoxDecoration(
                    color: Color(0xFF65AAEA), shape: BoxShape.circle),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(48), // Image radius
                    child: Image.asset(
                      "assets/images/profile.png",
                      fit: BoxFit.fill,
                      // width: window.physicalSize.width,
                      height: 150,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(3.0),
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Your Courses",
              style: TextStyle(
                color: Color(0xFF3C3A36),
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(3.0),
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Saved",
              style: TextStyle(
                color: Color(0xFF3C3A36),
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(3.0),
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Payment",
              style: TextStyle(
                color: Color(0xFF3C3A36),
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
