import 'package:flutter/material.dart';

class Loginbanner extends StatelessWidget {
  const Loginbanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const ClipPath(
      clipper: ShapeBorderClipper(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
