import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final double blur;
  final double height, width;
  final double opacity;
  final double borOpacity;
  final Widget child;
  bool isChildCentered;

  GlassMorphism({
    this.blur = 0.2,
    this.isChildCentered = false,
    required this.height,
    required this.width,
    required this.opacity,
    required this.borOpacity,
    required this.child,
  });

  // const GlassMorphism({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height,
        width: width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: blur,
              sigmaY: blur,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white70.withOpacity(opacity),
                borderRadius: const BorderRadius.all(Radius.circular(20.00)),
                border: Border.all(
                  width: 1.5,
                  color: Colors.white.withOpacity(borOpacity),
                ),
              ),
              child: isChildCentered
                  ? Center(
                      child: child,
                    )
                  : child,
            ),
          ),
        ),
      ),
    );
  }
}
