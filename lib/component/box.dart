import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class box extends StatelessWidget {
  box({required this.w, this.h});
  double? w;
  double? h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      height: h,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 45, 131, 217), width: 1.2),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 73, 79, 81)),
          ),
        ),
        textAlign: TextAlign.center,

        //   icon: Image.asset('images/eye-closed.png')),
      ),
    );
  }
}
