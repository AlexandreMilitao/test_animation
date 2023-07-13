import 'package:flutter/material.dart';
import 'package:tween_image_widget/tween_image_widget.dart';

class Sequence2 extends StatefulWidget {
  const Sequence2({super.key});

  @override
  State<Sequence2> createState() => _Sequence2State();
}

class _Sequence2State extends State<Sequence2> {
  String pathProviderNew = 'assets/images/all_sequence';
  int durationSequence2 = 1250;
  @override
  Widget build(BuildContext context) {
    return TweenImageWidget(
      ImagesEntry(
        60,
        85,
        '$pathProviderNew/sequence__%s.png',
      ),
      durationMilliseconds: durationSequence2,
    );
  }
}
