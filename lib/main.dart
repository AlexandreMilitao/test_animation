import 'package:flutter/material.dart';
import 'package:test_animation/image_animation.dart';
// import 'package:test_animation/widgets/device_curtain_page.dart';
// import 'package:tween_image_widget/tween_image_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ImageAnimation());
  }
}
