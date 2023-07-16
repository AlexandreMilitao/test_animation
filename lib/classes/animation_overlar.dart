import 'package:flutter/material.dart';

import '../image_animation.dart';

class AnimationOverlay {
  showOverLay(BuildContext context) {
    OverlayState overlayState = Overlay.of(context);
    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: ImageAnimation(
                overlayEntry: overlayEntry,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: IconButton(
                style: IconButton.styleFrom(backgroundColor: Colors.grey[800]),
                onPressed: () {
                  overlayEntry.remove();
                },
                icon: const Icon(Icons.close, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
    overlayState.insert(overlayEntry);
  }
}
