import 'package:flutter/material.dart';

class button extends StatelessWidget {
  button({required this.hintText});
  String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      height: 60,
      child: Center(
        child: Text(
          hintText,
          style: TextStyle(color: Color.fromARGB(255, 97, 8, 75), fontSize: 20),
        ),
      ),
    );
  }
}
