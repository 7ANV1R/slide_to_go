import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:slide_to_go/animation_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -size.height * 0.15,
            right: -size.height * 0.20,
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: size.height * 0.5,
              width: size.height * 0.5,
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: 70,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
                shape: BoxShape.circle,
              ),
              child: const TypingAnimation(),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 16,
            right: 16,
            child: SizedBox(
              height: 70,
              width: size.width,
              child: SlideAction(
                onSubmit: () {},
                sliderButtonIcon: const Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                text: 'Slide to unlock',
                textStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                borderRadius: 12,
                elevation: 0,
                innerColor: Colors.deepPurple,
                outerColor: Colors.deepPurple[200],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
