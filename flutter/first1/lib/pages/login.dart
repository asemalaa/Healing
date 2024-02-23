import 'package:first1/cooooooooood/button.dart';
import 'package:first1/cooooooooood/texttt.dart';
import 'package:first1/pages/register.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 176, 102, 123),
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
              padding: const EdgeInsets.only(top: 90, bottom: 30),
              child: Text(
                "login",
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
            texttt(
              hintText: 'Enter password',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90, bottom: 30),
              child: button(hintText: 'login'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "register if you haven't account ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return register();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Color.fromARGB(255, 107, 188, 128),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
