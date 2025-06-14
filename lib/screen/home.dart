//  Step 4: stateless widget
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Step 6: images widgets
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("images/mint9999.jpg", width: 150, height: 150),
        const SizedBox(height: 10),
        Image.network(
          "https://picsum.photos/250?image=9",
          width: 150,
          height: 150,
        ),
      ],
    );
  }
}
