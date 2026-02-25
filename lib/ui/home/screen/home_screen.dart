import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/reusable_component/background_screen.dart';
import 'package:tic_tac_toe/ui/home/widgets/player_choice.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundScreen(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/images/background_image_home.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Tic-Tac-Toe",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Text(
                "Pick who goes first?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 17),
              Container(
                margin: EdgeInsets.only(bottom: 26, right: 16, left: 16),
                child: Row(
                  spacing: 15,
                  children: [PlayerChoice("x"), PlayerChoice("o")],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
