import 'package:flutter/material.dart';
import 'package:test_animation/overlay/animation_overlar.dart';

class LootBoxOverlayOpe {
  showOverLay(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry? overlayEntry;

    MediaQueryData sizeInfo = MediaQuery.of(context);
    double height = sizeInfo.size.height;
    double width = sizeInfo.size.width;

    overlayEntry = OverlayEntry(
      builder: (context) => SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => overlayEntry!.remove(),
              child: const Opacity(
                opacity: 0.5,
                child: Scaffold(
                  backgroundColor: Colors.black,
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.03,
                  vertical: width / 25,
                ),
                height: height * 0.55,
                width: width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Fan Fest Time!',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: height / 30,
                            ),
                          ),
                        ),
                        Text(
                          "To celebrate we are giving away a bunch of stuff, simply open the box and see what you've won!",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: height / 50,
                          ),
                        ),
                        Icon(
                          Icons.card_giftcard,
                          size: height / 4,
                          color: Colors.pink,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            overlayEntry!.remove();
                            AnimationOverlay().showOverLay(context);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.pink),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          child: Text(
                            'LET ME PLAY, LET ME PLAY',
                            style: TextStyle(
                              fontSize: height / 60,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            overlayEntry!.remove();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                          ),
                          child: Text(
                            'NOT NOW THANKS',
                            style: TextStyle(
                              fontSize: height / 60,
                              color: Colors.pink,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    overlayState.insert(overlayEntry);
    // await Future.delayed(const Duration(seconds: 3));
    // overlayEntry.remove();
  }
}
