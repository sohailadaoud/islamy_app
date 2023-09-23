import 'package:flutter/material.dart';
import 'package:islamy_app/my_theme.dart';
import 'package:provider/provider.dart';

import '../../provider/app_config_provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double rotationAngle = 0;

  List<String> wordList = ["Sobhan Allah", "Estakhfor allah", "Allah Akbar"];
  String displayText = "Sobhan Allah";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppCongigProvider>(context);

    return Column(
      children: [
        InkWell(
          onTap: () {
            incrementCounterAndRotate();
          },
          child: Container(
            child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    provider.isDarkMode()
                        ? 'assets/images/head_sebha_dark.png'
                        : 'assets/images/head_of_sebha.png',
                  ),
                  RotationTransition(
                      turns: AlwaysStoppedAnimation(rotationAngle / 360),
                      child: GestureDetector(
                        onTap: incrementCounterAndRotate,
                        child: Image.asset(
                          provider.isDarkMode()
                              ? 'assets/images/body_sebha_dark.png'
                              : 'assets/images/body_of_sebha.png',
                        ),

                        //Image.asset('assets/images/body_of_sebha.png'),
                      )),
                ],
              ),
            ),
          ),
        ),
        Text('Tasbeeh', style: Theme.of(context).textTheme.titleMedium),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(onPressed: () {}, child: Text('${counter}')),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(20), // Adjust padding as needed
          decoration: BoxDecoration(
            color: provider.isDarkMode()
                ? MyTheme.primaryDark
                : Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20.0), // Custom shape
          ),
          child: Text(
            '$displayText',
            style: Theme.of(context).textTheme.titleSmall,
          ), // Text style
        ),
      ],
    );
  }

  void incrementCounterAndRotate() {
    setState(() {
      counter++;
      rotationAngle += 45;

      if (counter % 33 == 0) {
        displayText = wordList[counter ~/ 33 % wordList.length];
      }
    });
  }

// void rotateImage() {
//   setState(() {
//     rotationAngle += 45 ;
//   });
// }
}
