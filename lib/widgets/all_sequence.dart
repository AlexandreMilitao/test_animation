import 'package:flutter/material.dart';
import 'package:tween_image_widget/tween_image_widget.dart';

class AllSequence extends StatefulWidget {
  const AllSequence({super.key});

  @override
  State<AllSequence> createState() => _AllSequenceState();
}

class _AllSequenceState extends State<AllSequence> {
  String pathProviderNew = 'assets/images/all_sequence';
  @override
  Widget build(BuildContext context) {
    MediaQueryData sizeInfo = MediaQuery.of(context);
    double height = sizeInfo.size.height;

    return TweenImageWidget(
      ImagesEntry(
        1,
        257,
        '$pathProviderNew/sequence__%s.png',
      ),
      height: height * 0.9,
      durationMilliseconds: 13000,
    );
  }
}
