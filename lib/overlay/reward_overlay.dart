import 'package:flutter/material.dart';
import 'package:test_animation/widgets/reward_widget.dart';

class RewardOverlay extends StatefulWidget {
  const RewardOverlay({super.key, required this.overlayEntry});

  final OverlayEntry overlayEntry;

  @override
  State<RewardOverlay> createState() => _RewardOverlayState();
}

class _RewardOverlayState extends State<RewardOverlay> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    MediaQueryData sizeInfo = MediaQuery.of(context);
    double height = sizeInfo.size.height;
    double width = sizeInfo.size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const RewardWidget(),
          SizedBox(
            height: height / 50,
          ),
          Container(
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
          SizedBox(
            height: height / 50,
          ),
          ElevatedButton(
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
        ],
      ),
    );
  }
}
