import 'package:code_factory/src/home/home_view.dart';
import 'package:code_factory/src/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  static const routeName = '/intro';

  @override
  State<IntroView> createState() => _IntroState();
}

class _IntroState extends State<IntroView> {
  int currentPage = 0;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          SizedBox(
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              onPageChanged: (num) {
                setState(() {
                  currentPage = num;
                });
              },
              children: [
                intro1(),
                intro2(),
                intro3(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: paginationItem(index),
                ),
              ).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: CupertinoButton(
              color: const Color(0xFFE3562A),
              child: const Text("Next"),
              onPressed: () {
                setState(() {
                  if (currentPage > 1) {
                    currentPage = 0;
                    // TODO: navigate to login view
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView(),
                      ),
                    );
                  } else {
                    currentPage++;
                  }
                  controller.jumpToPage(currentPage);
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget intro1() {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Image.asset(
          "assets/images/intro1.png",
          fit: BoxFit.fill,
          // width: window.physicalSize.width,
          height: 264,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 16,
          ),
          child: Text(
            "Learn anytime and anywhere",
            style: TextStyle(
              color: Color(0xFF3C3A36),
              fontSize: 24,
              height: 1.2,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            bottom: 8,
            right: 50,
            left: 50,
          ),
          child: Text(
            "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
            style: TextStyle(
              color: Color(0xFF78746D),
              fontSize: 14,
              height: 1.2,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget intro2() {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Image.asset(
          "assets/images/intro2.png",
          fit: BoxFit.fill,
          // width: window.physicalSize.width,
          height: 264,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 16,
          ),
          child: Text(
            "Find a course for you",
            style: TextStyle(
              color: Color(0xFF3C3A36),
              fontSize: 24,
              height: 1.2,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            bottom: 8,
            right: 50,
            left: 50,
          ),
          child: Text(
            "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
            style: TextStyle(
              color: Color(0xFF78746D),
              fontSize: 14,
              height: 1.2,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget intro3() {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Image.asset(
          "assets/images/intro3.png",
          fit: BoxFit.fill,
          // width: window.physicalSize.width,
          height: 264,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 16,
          ),
          child: Text(
            "Improve your skills",
            style: TextStyle(
              color: Color(0xFF3C3A36),
              fontSize: 24,
              height: 1.2,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            bottom: 8,
            right: 50,
            left: 50,
          ),
          child: Text(
            "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
            style: TextStyle(
              color: Color(0xFF78746D),
              fontSize: 14,
              height: 1.2,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        CupertinoButton(
          child: const Text(
            "Skip",
            style: TextStyle(
              color: Color(0xFF78746D),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeView()),
            );
          },
        )
      ],
    );
  }

  Widget paginationItem(index) {
    if (currentPage == index) {
      return Container(
        height: 6,
        width: 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xFF65AAEA),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF65AAEA),
              spreadRadius: 1,
            ),
          ],
        ),
      );
    }

    return const Icon(
      Icons.fiber_manual_record_rounded,
      size: 8,
      color: Color(0xFFD5D4D4),
    );
  }
}
