import 'package:flutter/material.dart';

class BouncingDot extends StatefulWidget {
  const BouncingDot({super.key});

  @override
  State<BouncingDot> createState() => _BouncingDotState();
}

class _BouncingDotState extends State<BouncingDot> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.deepPurple[200],
        ),
        Positioned(
          left: 0,
          right: 0,
          child: Row(
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
