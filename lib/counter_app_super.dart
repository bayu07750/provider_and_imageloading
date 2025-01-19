import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_and_imageloading/state/counter_state.dart';
import 'package:provider_and_imageloading/state/user_preference.dart';
import 'package:provider_and_imageloading/utils/profile.dart';

class CounterAppSuper extends StatelessWidget {
  const CounterAppSuper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterState>(create: (context) => CounterState()),
        ChangeNotifierProvider<UserPreferenceState>(create: (context) => UserPreferenceState()),
      ],
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: () {
              final userPreference = context.watch<UserPreferenceState>().userPreference;
              final darkTheme = userPreference.darkTheme;
              if (darkTheme) {
                return ColorScheme.dark();
              } else {
                return ColorScheme.light();
              }
            }(),
            useMaterial3: true,
          ),
          home: const MyHomePage(title: 'Explore Provider'),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              context.watch<CounterState>().counter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Switch(
              value: context.watch<UserPreferenceState>().userPreference.darkTheme,
              onChanged: (value) => context.read<UserPreferenceState>().updateDarkMode(value),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              child: Text('Profile'),
            ),
            () {
              final userPreference = context.watch<UserPreferenceState>().userPreference;
              final username = userPreference.username;
              final email = userPreference.email;
              return Column(
                children: [
                  Text(username),
                  Text(email),
                ],
              );
            }(),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 16,
        children: [
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () => context.read<CounterState>().decrement(),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () => context.read<CounterState>().increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
