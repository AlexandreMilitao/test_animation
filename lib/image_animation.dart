import 'package:flutter/material.dart';
import 'package:tween_image_widget/tween_image_widget.dart';

class ImageAnimation extends StatefulWidget {
  const ImageAnimation({Key? key}) : super(key: key);

  @override
  State<ImageAnimation> createState() => _ImageAnimationState();
}

class _ImageAnimationState extends State<ImageAnimation> with TickerProviderStateMixin {
  int currentImageIndex = 0;

  //String pathProviderOld = 'assets/images/all_sequence_fixed';
  String pathProviderNew = 'assets/images/all_sequence';

  int durationSequence1 = 3000;
  int durationSequence2 = 1250;
  int durationSequence3 = 8600;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: ListView(
        children: <Widget>[
          TweenImageWidget(
            ImagesEntry(
              1,
              59,
              '$pathProviderNew/sequence__%s.png',
            ),
            durationMilliseconds: durationSequence1,
            repeat: true,
            startsValue: 0,
          ),
          TweenImageWidget(
            ImagesEntry(
              60,
              85,
              '$pathProviderNew/sequence__%s.png',
            ),
            durationMilliseconds: durationSequence2,
            repeat: true,
            startsValue: 0,
          ),
          TweenImageWidget(
            ImagesEntry(
              86,
              257,
              '$pathProviderNew/sequence__%s.png',
            ),
            durationMilliseconds: durationSequence3,
            repeat: true,
            startsValue: 0,
          ),
        ],
      ),
    );
  }
}
