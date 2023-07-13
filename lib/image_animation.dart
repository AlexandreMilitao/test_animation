import 'dart:async';

import 'package:flutter/material.dart';

import 'package:test_animation/widgets/sequence_1.dart';
import 'package:test_animation/widgets/sequence_2.dart';
import 'package:test_animation/widgets/sequence_3.dart';

class ImageAnimation extends StatefulWidget {
  const ImageAnimation({Key? key}) : super(key: key);

  @override
  State<ImageAnimation> createState() => _ImageAnimationState();
}

class _ImageAnimationState extends State<ImageAnimation> with TickerProviderStateMixin {
  int currentIndex = 1;

  void onTap() {
    // if (currentIndex == 4) {
    //   setState(() {
    //     currentIndex = 1;
    //     startTimer();
    //   });
    // } else
    if (currentIndex == 2 || currentIndex == 3) {
      setState(() {
        currentIndex++;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(const Duration(milliseconds: 3000), () {
      if (mounted) {
        setState(() {
          currentIndex = 2;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: GestureDetector(
        onTap: onTap,
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                if (currentIndex == 1) const Sequence1(),
                if (currentIndex == 2) const Sequence2(),
                if (currentIndex == 3) const Sequence3(),
                if (currentIndex == 4) Image.asset('assets/images/all_sequence/sequence__257.png'),
              ],
            ),
            //const AllSequence()
          ],
        ),
      ),
    );
  }
}
