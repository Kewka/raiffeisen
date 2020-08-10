import 'package:flutter/material.dart';

class HomePanel extends StatelessWidget {
  final String title;
  final Widget child;

  const HomePanel({Key key, this.title, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
                color: Color(0xFF212121).withOpacity(0.16),
                offset: Offset(0, -4),
                blurRadius: 24)
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular((16)))),
    );
  }
}
