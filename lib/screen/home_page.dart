import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/app_bar_container.dart';
import 'package:portfolio/widgets/custom_button.dart';

import '../globals/my_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width ;
    //1481.58
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          color: Themes.background),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Padding(
            //       padding:
            //           const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            //       child: Image.asset('images/aboutme.png'),
            //     ),
            //     const Row(
            //       children: [
            //         AppBarContainer(elementName: "Home"),
            //         AppBarContainer(elementName: "Skills"),
            //         AppBarContainer(elementName: "Education"),
            //         AppBarContainer(elementName: "Projects"),
            //         AppBarContainer(elementName: "Portfolio"),
            //         AppBarContainer(elementName: "Contact"),
            //       ],
            //     )
            //   ],
            // ),
            Container(
              margin: const EdgeInsets.fromLTRB(165, 96, 0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 78),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hello, Welcome',
                              style: GoogleFonts.lexendDeca(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w400,
                                fontSize: width*.0108,
                                color: const Color.fromRGBO(234, 179, 8, 1),
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,24,33,8),
                            child: Text('I am Ashutosh Kumar',
                                style: GoogleFonts.lexendDeca(
                                  decoration: TextDecoration.none,
                                    fontSize: width*0.0283,
                                    fontWeight: FontWeight.w700,
                                    color: Themes.white)),
                          ),
                          Text(
                            'Currently Studying at IIT Guwahati in my 5th Semester \npursuing my Graduation in Electronics and Electical Enginerring \nI have keen interest in DSA and I am exploring APP Development \nas well. I\'m looking forward to learn new TechStacks I love \nplaying Table Tennis and reading Novels',
                            style: GoogleFonts.lexendDeca(
                                decoration: TextDecoration.none,
                                fontSize: width*0.0108,
                                fontWeight: FontWeight.w400,
                                color: Themes.white),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 24),
                            child: CustomButton(
                              buttonName: 'Contact Me',
                            ),
                          )
                        ],
                      )),
                  Padding(
                    padding:  EdgeInsets.only(right: width*.123),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                        child: Image.asset('images/me.jpg',width: width*.135,)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
