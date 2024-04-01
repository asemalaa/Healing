import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/component/button.dart';
import 'package:project/component/texttt.dart';
import 'package:project/pages/depart.dart';
import 'package:project/component/batt.dart';

class special extends StatelessWidget {
  const special();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 241, 241),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 15, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('images/s (3).png'),
                SizedBox(
                  width: 250,
                ),
                Image.asset('images/s (2).png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Image.asset('images/s (1).png'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 293, top: 40),
            child: Image.asset('images/s4.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'depart');
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: SizedBox(
                    width: 380,
                    height: 55,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 136, 135, 135),
                          width: 0.9,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Image.asset("images/b (2).png"),
                          ),
                          Text(
                            'Book an appointment in clinic',
                            style: TextStyle(
                                color: Color.fromARGB(255, 101, 98, 98),
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: 380,
                    height: 55,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 136, 135, 135),
                          width: 0.9,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15, left: 30),
                            child: Image.asset("images/b (3).png"),
                          ),
                          Text(
                            'Book an online cosultation ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 101, 98, 98),
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: 380,
                    height: 55,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 136, 135, 135),
                          width: 0.9,
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, right: 15, left: 30),
                            child: Image.asset("images/b (1).png"),
                          ),
                          Text(
                            'Book a home visit',
                            style: TextStyle(
                                color: Color.fromARGB(255, 101, 98, 98),
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: 380,
                    height: 55,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 136, 135, 135),
                          width: 0.9,
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 15, bottom: 10, left: 30),
                            child: Image.asset("images/b (4).png"),
                          ),
                          Text(
                            'Book lab test at home',
                            style: TextStyle(
                                color: Color.fromARGB(255, 101, 98, 98),
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Latest Articles',
                style: TextStyle(
                    color: Color.fromARGB(255, 24, 24, 99),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial'),
              ),
              SizedBox(
                width: 160,
              ),
              Image.asset('images/hh.png'),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 185,
                  height: 224,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 244, 241, 241),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(255, 158, 152, 152),
                      width: 0.7,
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.asset('images/im (1).png'),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: Text(
                          '04 Oct 2023',
                          style: TextStyle(
                              color: Color.fromARGB(255, 74, 74, 80),
                              fontSize: 12,
                              fontFamily: 'Arial'),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 10, top: 5),
                        child: Text(
                          'What is the luminere and when is your choice for cosmetic dentistry?',
                          style: TextStyle(
                              color: Color.fromARGB(255, 58, 58, 162),
                              fontSize: 14,
                              fontFamily: 'Arial'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.white,
            height: 58,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/bar (2).png'),
                Image.asset('images/bar (3).png'),
                Image.asset('images/bar (4).png'),
                Image.asset('images/bar (5).png'),
                Image.asset('images/bar (1).png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
