import 'package:flutter/material.dart';
import 'package:project/component/button.dart';
import 'package:project/component/texttt.dart';
import 'package:project/pages/login.dart';

class register extends StatelessWidget {
  const register();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween.index(hashCode(6)),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 340, top: 50),
                  child: Image.asset(
                    'images/arrow-left.png',
                    scale: 0.8,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 60),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1F85D6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300, bottom: 10),
                child: Text(
                  "Full name",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 73, 79, 81)),
                ),
              ),
              texttt(),
              Padding(
                padding: const EdgeInsets.only(right: 340, bottom: 10, top: 15),
                child: Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 73, 79, 81)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: texttt(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300, bottom: 15),
                child: Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 73, 79, 81)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 73, 79, 81)),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 73, 79, 81)),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 340),
                      child: Image.asset('images/eye-closed.png'),
                    )),

                //   icon: Image.asset('images/eye-closed.png')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: button(hintText: 'Sign Up'),
              ),
              Image.asset(
                'images/foot.png',
                width: 349,
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/Facebook.png',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'images/Frame 84.png',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ? ",
                      style: TextStyle(color: Color.fromARGB(255, 73, 79, 81)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xff1F85D6),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
