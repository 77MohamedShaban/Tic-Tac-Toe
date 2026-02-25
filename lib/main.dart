import 'package:flutter/material.dart';
import 'package:tic_tac_toe/ui/board/screen/board_screen.dart';
import 'package:tic_tac_toe/ui/home/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tic_tac_toe',
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        BoardScreen.routeName: (_) => BoardScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
