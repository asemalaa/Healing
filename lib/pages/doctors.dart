import 'package:flutter/material.dart';
import 'package:project/component/button.dart';
import 'package:project/component/box.dart';

class doctors extends StatelessWidget {
  const doctors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 237, 237),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 310, bottom: 30, top: 50),
            child: Image.asset(
              'images/arrow-left.png',
              scale: 0.9,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 170, bottom: 20),
            child: Image.asset(
              'images/sp.png',
              scale: 0.8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              width: 370,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search by speciality',
                  filled: true,
                  fillColor: Color.fromARGB(255, 245, 241, 241),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 136, 135, 135),
                      fontFamily: 'Segoe UI'),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 147, 138, 138),
                    ),
                  ),
                  prefixIcon: Image.asset('images/search.png'),
                ),
                cursorColor: Color.fromARGB(255, 105, 31, 31),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
