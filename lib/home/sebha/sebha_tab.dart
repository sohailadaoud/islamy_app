import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
          child: Center(child: Image.asset('assets/images/body_of_sebha.png')),
        ),
        Text('Tasbeeh', style: Theme.of(context).textTheme.titleMedium),
        Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child:
                Center(child: Image.asset('assets/images/play_buttons.png'))),
      ],
    );
  }
}
