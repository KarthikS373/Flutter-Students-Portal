import 'package:flutter/material.dart';

AnimatedContainer buildSwipeSplash(BuildContext context, {final index, final currentPage}) {
  return AnimatedContainer(
    duration: kThemeAnimationDuration,
    margin: const EdgeInsets.symmetric(horizontal: 3),
    height: 6,
    width: currentPage == index ? 20 : 6,
    // width: 6,
    decoration: BoxDecoration(
      color: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(50),
    ),
  );
}
