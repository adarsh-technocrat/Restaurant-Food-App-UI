import 'package:flutter/material.dart';

class DefaultHeader extends StatelessWidget {
  final String image;
  final bool isImage;

  const DefaultHeader({Key key, this.image, this.isImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        width: double.infinity,
        height: 335,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: isImage
              ? AssetImage(image)
              : AssetImage("assets/images/bgimage.jpg"),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 40);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
