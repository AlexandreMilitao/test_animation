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
          height: height * 0.9,
          durationMilliseconds: durationSequence2,
        ),
        Positioned(
          // padding: EdgeInsets.only(bottom: height * 0.2),
          // alignment: Alignment.bottomCenter,
          bottom: height * 0.05,
          width: width,
          child: Center(
              child: Container(
            alignment: Alignment.center,
            //color: Colors.pink[300],
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(5),
            ),
            height: height / 20,
            width: width / 1.75,
            child: const Text(
              'PRESS ME, PRESS ME NOW!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )),
        ),
      ],
    );
  }
}
