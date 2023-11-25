import 'package:flutter/material.dart';

class VideoHero extends StatelessWidget {
  const VideoHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      // -------------------------- votre code ci dessous----------------
      child: const Center(
        child: Text(
          "Video background hero here !",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      //----------------------------------------------------------------
    );
  }
}