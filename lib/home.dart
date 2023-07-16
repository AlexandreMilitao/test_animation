import 'package:flutter/material.dart';
import 'package:test_animation/classes/loot_box_overlay_opt.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          LootBoxOverlayOpe().showOverLay(context);
        },
        child: const Text('Loot Box Test'),
      ),
    );
  }
}
