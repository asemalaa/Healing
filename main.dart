import 'dart:io';
import 'dart:math';

void main() {
  Set<int> st = {};
  Map<int, int> ma = {1: 9};
  st.add(9);
  ma.addAll({9: 9});
  //String s = stdin.readLineSync();
  // stdout.write((s[0]));
  stdout.write(st.elementAt(0));
  //stdout.write(ma[9]);
}
