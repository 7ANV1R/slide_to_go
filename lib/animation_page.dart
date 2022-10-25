import 'dart:async';

import 'package:flutter/material.dart';

class TypingAnimation extends StatefulWidget {
  const TypingAnimation({super.key});

  @override
  State<TypingAnimation> createState() => _TypingAnimationState();
}

class _TypingAnimationState extends State<TypingAnimation> with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController animationController2;
  late AnimationController animationController3;
  dynamic positionAnimation;
  dynamic positionAnimation2;
  dynamic positionAnimation3;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    Future.delayed(
      const Duration(milliseconds: 0),
      () {
        animationController.forward();
      },
    );

    animationController.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      }
      if (status == AnimationStatus.dismissed) {
        await Future.delayed(
          const Duration(milliseconds: 400),
        );
        animationController.forward();
      }
    });

    animationController.addListener(() {
      setState(() {});
    });

    positionAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    //2
    animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        animationController2.forward();
      },
    );

    animationController2.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        animationController2.reverse();
      }
      if (status == AnimationStatus.dismissed) {
        await Future.delayed(
          const Duration(milliseconds: 400),
        );
        animationController2.forward();
      }
    });

    animationController2.addListener(() {
      setState(() {});
    });

    positionAnimation2 = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(parent: animationController2, curve: Curves.easeInOut),
    );

    //3
    animationController3 = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    Future.delayed(
      const Duration(milliseconds: 700),
      () {
        animationController3.forward();
      },
    );

    animationController3.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        animationController3.reverse();
      }
      if (status == AnimationStatus.dismissed) {
        await Future.delayed(
          const Duration(milliseconds: 400),
        );
        animationController3.forward();
      }
    });

    animationController3.addListener(() {
      setState(() {});
    });

    positionAnimation3 = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(parent: animationController3, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
    animationController2.dispose();
    animationController3.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.translate(
                  offset: Offset(0.0, -positionAnimation.value * 10),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Transform.translate(
                  offset: Offset(0.0, -positionAnimation2.value * 10),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Transform.translate(
                  offset: Offset(0.0, -positionAnimation3.value * 10),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            // Transform.translate(
            //   offset: Offset(0.0, yOffset2),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         height: 10,
            //         width: 10,
            //         decoration: const BoxDecoration(
            //           color: Colors.white,
            //           shape: BoxShape.circle,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
