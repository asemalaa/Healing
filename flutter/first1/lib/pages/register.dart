import 'package:first1/cooooooooood/button.dart';
import 'package:first1/cooooooooood/texttt.dart';
import 'package:flutter/material.dart';

class register extends StatelessWidget {
  const register();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 176, 105, 125),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween.index(hashCode(6)),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Image.asset(
                'image/pngegg (3).png',
                scale: 2.5,
              ),
            ),
            Text(
              "Noon",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Rage Italic',
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 30),
              child: Text(
                "sign up",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Segoe UI',
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: texttt(
                hintText: 'Enter email',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: texttt(
                hintText: 'Enter password',
              ),
            ),
            texttt(
              hintText: 'confirm passwoerd',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 30),
              child: button(hintText: 'Register'),
            ),
          ],
        ),
      ),
    );
  }
}
