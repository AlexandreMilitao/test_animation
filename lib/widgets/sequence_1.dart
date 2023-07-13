import 'package:flutter/material.dart';
import 'package:tween_image_widget/tween_image_widget.dart';

class Sequence1 extends StatefulWidget {
  const Sequence1({super.key});

  @override
  State<Sequence1> createState() => _Sequence1State();
}

class _Sequence1State extends State<Sequence1> {
  String pathProviderNew = 'assets/images/all_sequence';
  int durationSequence1 = 3000;
  @override
  Widget build(BuildContext context) {
    return TweenImageWidget(
      ImagesEntry(
        1,
        59,
        '$pathProviderNew/sequence__%s.png',
      ),
      durationMilliseconds: durationSequence1,
      startsValue: 0,
    );
  }
}
