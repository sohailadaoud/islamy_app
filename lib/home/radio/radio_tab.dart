import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            //padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Center(child: Image.asset('assets/images/radio.png'))),
        Text('Ezaat el quran elkareem',
            style: Theme.of(context).textTheme.titleMedium),
        Container(
            //padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child:
                Center(child: Image.asset('assets/images/play_buttons.png'))),
      ],
    );
  }
}
