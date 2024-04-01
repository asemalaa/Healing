import 'package:flutter/material.dart';
import 'package:project/pages/login.dart';

class Homeapp extends StatelessWidget {
  const Homeapp();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'login');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('images/تصميم بدون عنوان 1.png'),
            ),
            Text(
              'Healer',
              style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'Sarabun',
                  color: Color(0xff1F85D6)),
            )
          ],
        ),
      ),
    );
  }
}
/**  */