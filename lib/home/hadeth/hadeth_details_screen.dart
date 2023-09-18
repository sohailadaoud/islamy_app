import 'package:flutter/material.dart';
import 'package:islamy_app/home/hadeth/item_hadeth_details.dart';
import 'package:islamy_app/my_theme.dart';
import 'package:provider/provider.dart';

import '../../provider/app_config_provider.dart';
import 'hadeth_tab.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth_details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppCongigProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    // if (verses.isEmpty) {
    //   loadFile(args.index);
    // }

    return Stack(children: [
      provider.isDarkMode()
          ? Image.asset(
              'assets/images/dark_bg.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              'assets/images/main_background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: MediaQuery.of(context).size.height * 0.06,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyTheme.whiteColor,
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetails(content: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    ]);
  }

// void loadFile(int index) async {
//   String content =
//       await rootBundle.loadString('assets/files/${index + 1}.txt');
//   List<String> lines = content.split('\n');
//   verses = lines;
//   print(lines);
//   setState(() {});
// }
}

// class SurahDetailsArgs {
//   String name;
//   int index;
//
//   SurahDetailsArgs({required this.name, required this.index});
// }
