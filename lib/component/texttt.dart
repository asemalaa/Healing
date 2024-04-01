import 'package:flutter/material.dart';

class texttt extends StatelessWidget {
  texttt({this.hintText});
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white, fontFamily: 'Segoe UI'),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 73, 79, 81),
          ),
        ),
        border: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromARGB(255, 73, 79, 81), width: 1.5),
        ),
      ),

      //   icon: Image.asset('images/eye-closed.png')),
    );
  }
}
