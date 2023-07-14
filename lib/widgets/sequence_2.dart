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
    MediaQueryData sizeInfo = MediaQuery.of(context);
    double height = sizeInfo.size.height;
    double width = sizeInfo.size.width;

    return Stack(
      children: [
        TweenImageWidget(
          ImagesEntry(
            60,
            85,
            '$pathProviderNew/sequence__%s.png',
          ),
          durationMilliseconds: durationSequence2,
        ),
        SizedBox(
          height: 650,
          width: 392,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.pink[300],
                height: height / 25,
                width: width / 2,
                child: const Text(
                  'PRESS ME, PRESS ME NOW!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
