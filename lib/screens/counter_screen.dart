import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void increse(){
    counter++;
    setState(() {});
  }

  void decrese(){
    counter--;
    setState(() {});
  }

  void reset(){
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    TextStyle fontsizeText = const TextStyle(fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        title: const Center (
          child:  Text('Contador')
          ),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de clicks: ', style: fontsizeText),
            Text('$counter', style: fontsizeText)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: CustomFloatingActions(
        increseCounter: increse,
        decreseCounter: decrese,
        resetCounter: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increseCounter;
  final Function decreseCounter;
  final Function resetCounter;

  const CustomFloatingActions({
    Key? key, 
    required this.increseCounter, 
    required this.decreseCounter, 
    required this.resetCounter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: (){
            increseCounter();
          },
          child: const Icon(Icons.exposure_plus_1_outlined)
        ),
        FloatingActionButton(
          onPressed: () => resetCounter(),
          child: const Icon(Icons.restart_alt_rounded)
        ),
        FloatingActionButton(
          onPressed: () => decreseCounter(),
          child: const Icon(Icons.exposure_minus_1_outlined)
        ),
      ]
    );
  }
}