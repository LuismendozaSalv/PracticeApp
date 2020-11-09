import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final double blurRadius;
  final Color shadowColor;
  final double offSetX;
  final double offSetY;
  final BorderRadiusGeometry borderRadius;

  CardView({
    this.child,
    this.backgroundColor,
    this.blurRadius,
    this.shadowColor,
    this.offSetX,
    this.offSetY,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: shadowColor,
              blurRadius: blurRadius,
              offset: Offset(offSetX, offSetY)),
        ],
      ),
      child: child,
    );
  }
}
