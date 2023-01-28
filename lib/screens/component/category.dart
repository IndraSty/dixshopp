import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.img,
    required this.title,
    required this.color,
    required this.txtColor,
    required this.padding,
  }) : super(key: key);
  final String img, title;
  final Color color, txtColor;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 114,
      height: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 1.5,
            offset: Offset(0, 1.5),
          )
        ],
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Image.asset(img),
        ),
        Padding(
          padding: EdgeInsets.only(left: padding),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'PoppinsSemiBold',
              fontSize: 12,
              color: txtColor,
            ),
          ),
        )
      ]),
    );
  }
}