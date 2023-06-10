import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../globals/my_colors.dart';
class CustomButton extends StatelessWidget {
  final String buttonName;
  const CustomButton({Key? key, required this.buttonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width ;
    return Container(
      height: 43,
      width: width*0.089,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Themes.yellowButtonColor,
    ),
      child: Center(
        child: Text(
          buttonName,
            style: GoogleFonts.lexendDeca(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w400,
              fontSize: width*.0108,
              color: Colors.black,
            )
        ),
      ),
    );
  }
}
