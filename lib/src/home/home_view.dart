import 'dart:async';

import 'package:code_factory/src/intro/intro_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //Center Column contents vertically,
        crossAxisAlignment: CrossAxisAlignment.center,
        //Center Column contents horizontally,
        children: [
          Image.asset(
            "assets/images/home_img.png",
            fit: BoxFit.fill,
            // width: window.physicalSize.width,
            height: 264,
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 16,
            ),
            child: Text(
              "CodeFactory",
              style: TextStyle(
                fontSize: 40,
                color: Color(0xFF3C3A36),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: !isLoading
                ? CupertinoButton(
                    onPressed: () {
                      setState(() {
                        isLoading = true;
                      });

                      Future.delayed(const Duration(milliseconds: 3000), () {
                        // Here you can write your code

                        setState(() {
                          // Here you can write your code for open new view
                          isLoading = false;
                          // TODO: Navigate to next page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const IntroView(),
                            ),
                          );
                        });
                      });
                    },
                    child: const Text('Let\'s go'),
                  )
                : const CupertinoActivityIndicator(
                    radius: 20.0,
                    color: CupertinoColors.activeBlue,
                  ),
          ),
        ],
      ),
    );
  }
}
