import 'package:flutter/material.dart';

class RewardWidget extends StatelessWidget {
  const RewardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData sizeInfo = MediaQuery.of(context);
    double height = sizeInfo.size.height;
    double width = sizeInfo.size.width;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width / 20,
        vertical: height / 50,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: width / 30,
          color: Colors.white,
        ),
      ),
      child: Column(
        children: [
          const Text(
            "You've",
            style: TextStyle(
              color: Colors.pink,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "WON!",
            style: TextStyle(
              color: Colors.pink,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            'assets/images/rewards/mascara_3.png',
          ),
          const Text(
            "They're Real! \nGlorious Mascara brush set!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.pink,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
