import 'package:flutter/material.dart';
import 'package:tween_image_widget/tween_image_widget.dart';

class ImageAnimation extends StatefulWidget {
  const ImageAnimation({Key? key}) : super(key: key);

  @override
  State<ImageAnimation> createState() => _ImageAnimationState();
}

class _ImageAnimationState extends State<ImageAnimation> with TickerProviderStateMixin {
  int currentStep = 1;
  late AnimationController controller;
  String pathProviderNew = 'assets/images/all_sequence';

  int durationSequence1 = 3000;
  int durationSequence2 = 1250;
  int durationSequence3 = 8600;

  @override
  void initState() {
    super.initState();
  }

  void onTap() {
    if (currentStep == 4) {
      setState(() {
        currentStep = 1;
      });
    } else {
      setState(() {
        currentStep++;
      });
    }
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
        child: Column(
          children: <Widget>[
            Visibility(
              visible: currentStep == 1,
              child: TweenImageWidget(
                ImagesEntry(
                  1,
                  59,
                  '$pathProviderNew/sequence__%s.png',
                ),
                durationMilliseconds: durationSequence1,
                startsValue: 0,
              ),
            ),
            Visibility(
              visible: currentStep == 2,
              child: TweenImageWidget(
                ImagesEntry(
                  60,
                  85,
                  '$pathProviderNew/sequence__%s.png',
                ),
                durationMilliseconds: durationSequence2,
              ),
            ),
            Visibility(
              visible: currentStep == 3,
              child: TweenImageWidget(
                ImagesEntry(
                  86,
                  257,
                  '$pathProviderNew/sequence__%s.png',
                ),
                durationMilliseconds: durationSequence3,
              ),
            ),
            Visibility(
              visible: currentStep == 4,
              child: TweenImageWidget(
                ImagesEntry(
                  1,
                  257,
                  '$pathProviderNew/sequence__%s.png',
                ),
                durationMilliseconds: 13000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
