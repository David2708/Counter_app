

import 'package:contador_app/screens/counter_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}


class Myapp extends StatelessWidget{
  const Myapp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen()
    );
  }

}