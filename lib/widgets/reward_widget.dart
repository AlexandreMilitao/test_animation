import 'dart:async';
import 'package:flutter/material.dart';

class RewardWidget extends StatefulWidget {
  const RewardWidget({super.key, required this.overlayEntry});

  final OverlayEntry overlayEntry;

  @override
  State<RewardWidget> createState() => _RewardWidgetState();
}

class _RewardWidgetState extends State<RewardWidget> {
  bool visible = true;

  @override
  void initState() {
    super.initState();
    startTime();
  }

  void startTime() {
    Timer(const Duration(milliseconds: 4000), () {
      setState(() {
        visible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData sizeInfo = MediaQuery.of(context);
    double height = sizeInfo.size.height;
    double width = sizeInfo.size.width;

    return Stack(
      children: [
        Positioned(
          bottom: height * 0.1,
          width: width,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                widget.overlayEntry.remove();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                height: height / 20,
                width: width / 1.75,
                child: const Text(
                  "REDEEM NOW",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          height: height * 0.8,
          width: width,
          child: Image.asset(
            'assets/images/all_sequence/sequence__257.png',
            height: height * 0.9,
          ),
        ),
        Positioned(
          height: height * 0.8,
          width: width,
          child: Image.asset(
            'assets/images/rewards/mascara_3.png',
            height: height * 0.9,
          ),
        ),
        Positioned(
          bottom: height * 0.70,
          width: width,
          child: const Column(
            children: [
              Text(
                "You've",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "WON!",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: height * 0.35,
          width: width,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: const Text(
                "They're Real! \nGlorious Mascara brush set!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: height * 0.23,
          width: width,
          child: Center(
            child: Container(
              width: width / 1,
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: const Text(
                "You can find and claim your prize in the 'Spend' tab in rewards",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
