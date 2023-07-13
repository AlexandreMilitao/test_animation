import 'package:flutter/material.dart';
import 'package:tween_image_widget/tween_image_widget.dart';

class Sequence3 extends StatefulWidget {
  const Sequence3({super.key});

  @override
  State<Sequence3> createState() => _Sequence3State();
}

class _Sequence3State extends State<Sequence3> {
  String pathProviderNew = 'assets/images/all_sequence';
  int durationSequence3 = 8600;
  @override
  Widget build(BuildContext context) {
    return TweenImageWidget(
      ImagesEntry(
        86,
        257,
        '$pathProviderNew/sequence__%s.png',
      ),
      durationMilliseconds: durationSequence3,
    );
  }
}
