import 'package:flutter/material.dart';
import 'package:local_storage/view/home_screen/home_screen.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
void main(){
  runApp(Myapp());
}