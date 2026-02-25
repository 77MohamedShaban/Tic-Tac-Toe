import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Boardbtn extends StatelessWidget {
  String symbol;
  int index;
  void Function(int) onPress;

  Boardbtn({required this.symbol, required this.onPress, required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onPress(index);
        },
        child: Container(
          child: symbol == ""
              ? null
              : SvgPicture.asset("assets/images/$symbol.svg"),
        ),
      ),
    );
  }
}
