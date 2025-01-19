// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_and_imageloading/counter_state.dart';

// class SampleMultipleProvider extends StatelessWidget {
//   const SampleMultipleProvider({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => CounterState(),
//       builder: (context, child) {
//         return ChangeNotifierProvider(
//           create: CounterState2(),
//           builder: (context, child) {
//             return ChangeNotifierProvider(
//               create: CounterState3(),
//               builder: (context, child) {
//                 return ChangeNotifierProvider(
//                   create: ...,
//                   builder: ...,
//                 )
//               },
//             )
//           },
//         );
//       },
//     );
//   }
// }
