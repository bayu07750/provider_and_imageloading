import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_and_imageloading/state/counter_state.dart';

class CounterApp3 extends StatelessWidget {
  const CounterApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterState(),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Counter App'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${context.watch<CounterState>().counter}',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 16,
            children: <Widget>[
              FloatingActionButton(
                heroTag: 'increment',
                onPressed: () {
                  context.read<CounterState>().increment();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 8),
              FloatingActionButton(
                heroTag: 'decrement',
                onPressed: () {
                  context.read<CounterState>().decrement();
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}
