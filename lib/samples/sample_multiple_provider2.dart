// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_and_imageloading/counter_state.dart';

// class SampleMultipleProvider extends StatelessWidget {
//   const SampleMultipleProvider({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => CounterState()),
//         ChangeNotifierProvider(create: (context) => CounterState2()),
//         ChangeNotifierProvider(create: (context) => CounterState3()),
//         ...,
//       ],
//       builder: (context, child) {
//         return Placeholder();
//       },
//     );
//   }
// }
