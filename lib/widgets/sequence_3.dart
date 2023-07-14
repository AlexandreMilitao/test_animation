import 'package:flutter/material.dart';
import 'package:tween_image_widget/tween_image_widget.dart';

class Sequence3 extends StatefulWidget {
  const Sequence3({super.key});

  @override
  State<Sequence3> createState() => _Sequence3State();
}

class _Sequence3State extends State<Sequence3> {
  String pathProviderNew = 'assets/images/all_sequence';
  int durationSequence3 = 4500;
  @override
  Widget build(BuildContext context) {
    MediaQueryData sizeInfo = MediaQuery.of(context);
    double height = sizeInfo.size.height;
    return Center(
      child: TweenImageWidget(
        ImagesEntry(
          86,
          176,
          '$pathProviderNew/sequence__%s.png',
        ),
        height: height * 0.9,
        durationMilliseconds: durationSequence3,
      ),
    );
  }
}
