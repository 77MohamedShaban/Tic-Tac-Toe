import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tic_tac_toe/ui/board/screen/board_screen.dart';

class PlayerChoice extends StatelessWidget {
  String player;
  PlayerChoice(this.player);

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(BoardScreen.routeName,arguments: player);
        },
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
          ),
          child: SvgPicture.asset("assets/images/$player.svg",width: 86,height: 86),
        ),
      ),
    );
  }
}
