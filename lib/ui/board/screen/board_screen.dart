import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/reusable_component/background_screen.dart';
import 'package:tic_tac_toe/ui/board/widgets/boardbtn.dart';

class BoardScreen extends StatefulWidget {
  static const String routeName = "boardScreen";

  BoardScreen({super.key});

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  int player1Score = 0;
  int player2Score = 0;
  late String player1Choice;
  late String player2Choice;
  late String message = "Player 1’s Turn ($player1Choice)";
  bool endGame = false;
  List<String> board = ["", "", "", "", "", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    player1Choice = ModalRoute.of(context)?.settings.arguments as String;
    player2Choice = player1Choice == "x" ? "o" : "x";

    return BackgroundScreen(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(44),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Player1",
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            player1Score.toString(),
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Player2",
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            player2Score.toString(),
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  message,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: endGame ? Colors.lightGreenAccent : Colors.white,
                  ),
                ),
                SizedBox(height: 24),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(44),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            spacing: 10,
                            children: [
                              Boardbtn(
                                symbol: board[0],
                                onPress: onBoardButtonClicked,
                                index: 0,
                              ),
                              VerticalDivider(
                                thickness: 2,
                                color: Colors.black,
                              ),
                              Boardbtn(
                                symbol: board[1],
                                onPress: onBoardButtonClicked,
                                index: 1,
                              ),
                              VerticalDivider(
                                thickness: 2,
                                color: Colors.black,
                              ),
                              Boardbtn(
                                symbol: board[2],
                                onPress: onBoardButtonClicked,
                                index: 2,
                              ),
                            ],
                          ),
                        ),
                        Divider(thickness: 2, color: Colors.black, height: 0),
                        Expanded(
                          child: Row(
                            spacing: 10,
                            children: [
                              Boardbtn(
                                symbol: board[3],
                                onPress: onBoardButtonClicked,
                                index: 3,
                              ),
                              VerticalDivider(
                                thickness: 2,
                                color: Colors.black,
                              ),
                              Boardbtn(
                                symbol: board[4],
                                onPress: onBoardButtonClicked,
                                index: 4,
                              ),
                              VerticalDivider(
                                thickness: 2,
                                color: Colors.black,
                              ),
                              Boardbtn(
                                symbol: board[5],
                                onPress: onBoardButtonClicked,
                                index: 5,
                              ),
                            ],
                          ),
                        ),
                        Divider(thickness: 2, color: Colors.black, height: 0),
                        Expanded(
                          child: Row(
                            spacing: 10,
                            children: [
                              Boardbtn(
                                symbol: board[6],
                                onPress: onBoardButtonClicked,
                                index: 6,
                              ),
                              VerticalDivider(
                                thickness: 2,
                                color: Colors.black,
                              ),

                              Boardbtn(
                                symbol: board[7],
                                onPress: onBoardButtonClicked,
                                index: 7,
                              ),
                              VerticalDivider(
                                thickness: 2,
                                color: Colors.black,
                              ),

                              Boardbtn(
                                symbol: board[8],
                                onPress: onBoardButtonClicked,
                                index: 8,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  int roundCounter = 1;
  int roundGame = 1;

  onBoardButtonClicked(int index) {
    setState(() {
      if (board[index].isNotEmpty) return;
      if (chekWinner(player1Choice)) return;
      if (chekWinner(player2Choice)) return;

      if (roundCounter.isOdd) {
        board[index] = player1Choice;
        message = "Player 2’s Turn ($player2Choice)";
      } else {
        board[index] = player2Choice;
        message = "Player 1’s Turn ($player1Choice)";
      }

      if (chekWinner(player1Choice)) {
        player1Score += 10;
        message = "Player 1 is winner";
        endGame = true;
        resetGame();
      } else if (chekWinner(player2Choice)) {
        player2Score += 10;
        message = "Player 2 is winner";
        endGame = true;
        resetGame();
      } else if (roundGame == 9) {
        message = "Draw";
        resetGame();
      } else {
        roundCounter++;
        roundGame++;
        print(roundCounter);
        print("roundGame $roundGame");
      }
    });
  }

  bool chekWinner(String symbol) {
    for (int i = 0; i <= 6; i += 3) {
      if (board[i] == symbol &&
          board[i + 1] == symbol &&
          board[i + 2] == symbol) {
        return true;
      }
    }
    for (int i = 0; i <= 2; i++) {
      if (board[i] == symbol &&
          board[i + 3] == symbol &&
          board[i + 6] == symbol) {
        return true;
      }
    }
    if (board[0] == symbol && board[4] == symbol && board[8] == symbol) {
      return true;
    }
    if (board[2] == symbol && board[4] == symbol && board[6] == symbol) {
      return true;
    }
    return false;
  }

  resetGame() {
    Timer(Duration(seconds: 2, milliseconds: 500), () {
      setState(() {
        if (roundCounter.isOdd) {
          message = "Player 1’s Turn ($player1Choice)";
        } else {
          message = "Player 2’s Turn ($player2Choice)";
        }
        endGame = false;
        board = ["", "", "", "", "", "", "", "", ""];
        roundGame = 1;
      });
    });
  }
}
