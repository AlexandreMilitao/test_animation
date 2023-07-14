import 'package:flutter/material.dart';
import 'package:test_animation/image_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  showOverlar(BuildContext context) {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry? overlayEntry;
    void removeOverlay() {
      overlayEntry!.remove();
    }

    overlayEntry = OverlayEntry(
      builder: (context) => SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Center(
              child: ImageAnimation(),
            ),
            Container(
              alignment: Alignment.topRight,
              child: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey[800],
                ),
                onPressed: () {
                  removeOverlay();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    overlayState.insert(overlayEntry);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showOverlar(context);
        },
        child: const Text('Loot Box Test'),
      ),
    );
  }
}
