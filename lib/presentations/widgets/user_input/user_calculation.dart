import 'package:flutter/material.dart';

class UserCalculation extends StatefulWidget {
  @override
  _UserCalculationState createState() => _UserCalculationState();
}

class _UserCalculationState extends State<UserCalculation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Backofen.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Backofen.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Backofen.png')),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Spule.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Spule.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Spule.png')),
            ],
          )
        ],
      ),
    );
  }
}
