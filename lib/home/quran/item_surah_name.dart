import 'package:flutter/material.dart';
import 'package:islamy_app/home/quran/surah_details_screen.dart';
import 'package:islamy_app/my_theme.dart';
import 'package:islamy_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemSurahName extends StatelessWidget {
  String name;
  int index;

  ItemSurahName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppCongigProvider>(context);
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(SurahDetailsScreen.routeName,
              arguments: SurahDetailsArgs(name: name, index: index));
        },
        child: Text(
          name,
          style: provider.isDarkMode()
              ? Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: MyTheme.whiteColor)
              : Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ));
  }
}
