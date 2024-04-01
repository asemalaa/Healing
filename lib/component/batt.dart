import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class batt extends StatelessWidget {
  batt({required this.w, this.h});
  double? w;
  double? h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      height: h,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromARGB(255, 136, 135, 135),
            width: 0.9,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 15),
              child: Image.asset("images/b (1).png"),
            ),
            Text(
              'Book an appointment in clinic',
              style: TextStyle(
                  color: Color.fromARGB(255, 101, 98, 98), fontSize: 17),
            )
          ],
        ),
      ),
    );
  }
}
