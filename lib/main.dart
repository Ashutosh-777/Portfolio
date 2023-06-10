import 'package:flutter/material.dart';
import 'package:portfolio/screen/home_page.dart';
import 'package:portfolio/widgets/app_bar_container.dart';

import 'globals/my_colors.dart';

void main() {
  runApp(const Portfolio());
}
class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final Color primaryColor = Themes.appBar;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Themes.appBar,
        primarySwatch: MaterialColor(
          primaryColor.value,
          <int, Color>{
            50: primaryColor.withOpacity(0.1),
            100: primaryColor.withOpacity(0.2),
            200: primaryColor.withOpacity(0.3),
            300: primaryColor.withOpacity(0.4),
            400: primaryColor.withOpacity(0.5),
            500: primaryColor.withOpacity(0.6),
            600: primaryColor.withOpacity(0.7),
            700: primaryColor.withOpacity(0.8),
            800: primaryColor.withOpacity(0.9),
            900: primaryColor.withOpacity(1),
          },
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            //height: 90,
            decoration: const BoxDecoration(
              color: Themes.appBar
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  child: Image.asset('images/aboutme.png'),
                ),
                 const Row(
                  children: [
                    AppBarContainer(elementName: "Home"),
                    AppBarContainer(elementName: "Skills"),
                    AppBarContainer(elementName: "Education"),
                    AppBarContainer(elementName: "Projects"),
                    AppBarContainer(elementName: "Portfolio"),
                    AppBarContainer(elementName: "Contact"),
                  ],
                )
              ],
            ),
          ),
        ),
        body: const HomePage(),
      ),
    );
  }
}

