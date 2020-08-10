import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 311 / 190,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color(0xFF212121).withOpacity(0.5),
              offset: Offset(0, 8),
              blurRadius: 16)
        ]),
        child: SvgPicture.asset(
          'assets/images/card_black.svg',
        ),
      ),
    );
  }
}
