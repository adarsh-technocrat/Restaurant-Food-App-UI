import 'package:flutter/material.dart';

class DefaultButtons extends StatelessWidget {
  final Icon icon;
  final Function onTap;

  const DefaultButtons({Key key, this.icon, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, -1),
                blurRadius: 8,
              )
            ]),
        child: icon,
      ),
    );
  }
}
