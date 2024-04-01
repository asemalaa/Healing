import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/component/button.dart';
import 'package:project/component/box.dart';

class depart extends StatelessWidget {
  const depart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 241, 241),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 310, bottom: 30, top: 50),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'images/arrow-left.png',
                scale: 0.9,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 170, bottom: 20),
            child: Image.asset(
              'images/sp.png',
              scale: 0.8,
            ),
          ),
          SizedBox(
            width: 370,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search by speciality',
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
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
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'doctors');
            },
            child: Row(
              children: [
                SizedBox(
                  height: 80,
                  width: 30,
                ),
                Image.asset('images/spc (2).png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Dentisitry',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'doctors');
            },
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Image.asset('images/spc (3).png'),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Audiology',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'doctors');
            },
            child: Row(
              children: [
                SizedBox(
                  height: 75,
                  width: 20,
                ),
                Image.asset('images/spc (10).png'),
                SizedBox(
                  width: 14,
                ),
                Text(
                  'Dermatology',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'doctors');
            },
            child: Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 30,
                ),
                Image.asset('images/spc (4).png'),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Andrology and Male Infertility',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
