import 'package:flutter/material.dart';

class ItemHadethName extends StatelessWidget {
  String title;

  ItemHadethName({required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.of(context).pushNamed(SurahDetailsScreen.routeName,
        //     arguments: SurahDetailsArgs(name: name, index: index));
      },
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
