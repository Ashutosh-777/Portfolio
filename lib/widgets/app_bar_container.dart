import 'package:flutter/material.dart';
import 'package:portfolio/globals/my_styles.dart';
class AppBarContainer extends StatelessWidget {
  final String elementName;
  const AppBarContainer({Key? key, required this.elementName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.fromLTRB(0,21,27,0),
      child: Text(
        elementName,
        style: appBarText,
      ),
    );
  }
}
