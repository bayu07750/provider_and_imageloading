import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  //runApp(const CounterAppSuper());
  //runApp(const CounterAppSuper2());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Placeholder(),
      //home: CounterApp1(),
      //home: CounterApp2(),
      //home: CounterApp3(),
      //home: ImageLoadingDemo2(),
    );
  }
}
