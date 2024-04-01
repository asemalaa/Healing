import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/component/box.dart';
import 'package:project/component/button.dart';
import 'package:project/component/texttt.dart';
import 'package:project/pages/verfication.dart';

//forget.dart
class reset extends StatelessWidget {
  const reset();

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
              SizedBox(
                width: 360,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 30, right: 100),
                child: Text(
                  "Create New Password",
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1F85D6)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "New password",
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 118, 121, 122),
                    fontFamily: 'Poppins',
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 73, 79, 81)),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 73, 79, 81)),
                  ),
                ),

                //   icon: Image.asset('images/eye-closed.png')),
              ),
              SizedBox(
                height: 20,
                width: 900,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Confirm your password",
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 118, 121, 122),
                    fontFamily: 'Poppins',
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 73, 79, 81)),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 73, 79, 81)),
                  ),
                ),

                //   icon: Image.asset('images/eye-closed.png')),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 45, 131, 217)),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 73, 79, 81)),
                        ),
                      ),
                      textAlign: TextAlign.center,

                      //   icon: Image.asset('images/eye-closed.png')),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                      color: Color.fromARGB(255, 98, 100, 101),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  child: button(hintText: 'Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
