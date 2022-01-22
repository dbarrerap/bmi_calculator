import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableCard extends StatelessWidget {
  final Color background;
  final Widget? child;
  final void Function()? onTap;

  ReusableCard({required this.background, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: kBorderCardColor,
            width: 0.2,
          ),
          color: background,
        ),
      ),
    );
  }
}