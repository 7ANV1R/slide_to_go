import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool isUp = false;
  void startTimer() {
    // Timer timer = Timer.periodic(const Duration(milliseconds: 1200), (timer) {
    //   setState(() {
    //     isUp = !isUp;
    //   });
    // });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 64),
                height: 70,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            AnimatedPositioned(
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 400),
              top: isUp ? 25 : 35,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  // const SizedBox(
                  //   width: 4,
                  // ),
                  // Container(
                  //   height: 10,
                  //   width: 10,
                  //   decoration: const BoxDecoration(
                  //     color: Colors.white,
                  //     shape: BoxShape.circle,
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 4,
                  // ),
                  // Container(
                  //   height: 10,
                  //   width: 10,
                  //   decoration: const BoxDecoration(
                  //     color: Colors.white,
                  //     shape: BoxShape.circle,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
