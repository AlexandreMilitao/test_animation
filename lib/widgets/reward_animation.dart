import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_animation/widgets/reward.dart';
import 'package:tween_image_widget/tween_image_widget.dart';

class RewardAnimation extends StatefulWidget {
  const RewardAnimation({super.key});

  @override
  State<RewardAnimation> createState() => _RewardAnimationState();
}

class _RewardAnimationState extends State<RewardAnimation> {
  bool visible = true;
  @override
  void initState() {
    super.initState();
    startTime();
  }

  void startTime() {
    Timer(const Duration(milliseconds: 4500), () {
      setState(() {
        visible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    String pathProviderNew = 'assets/images/all_sequence';
    int durationSequence3 = 4500;
    MediaQueryData sizeInfo = MediaQuery.of(context);
    double height = sizeInfo.size.height;

    return Expanded(
      child: Stack(
        children: [
          const RewardWidget(),
          Visibility(
            visible: visible,
            child: TweenImageWidget(
              ImagesEntry(
                175,
                257,
                '$pathProviderNew/sequence__%s.png',
              ),
              height: height * 0.9,
              durationMilliseconds: durationSequence3,
            ),
          ),
        ],
      ),
    );
  }
}
