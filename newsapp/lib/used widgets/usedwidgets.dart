import 'package:flutter/material.dart';

Widget scrollcolumn(
    {
      required BuildContext context,
      required NetworkImage image,
      required String text1,
      required String text2,
      required String text3}) {
  return SizedBox(
    width: double.infinity,
    height: 128,
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          height: 128,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: SizedBox(
            height: 128,
            width: 325,
            child: Positioned(
              top: 10,
              left: 20,
              child: Text(
                text1,
                style: const TextStyle(
                  fontFamily: 'NewYorkSmallRegular',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}