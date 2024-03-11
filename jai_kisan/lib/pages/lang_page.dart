import 'package:flutter/material.dart';
import 'package:jai_kisan/pages/home_page_en.dart';
import 'package:jai_kisan/pages/home_page_hn.dart';
import 'package:jai_kisan/components/lang_card.dart';

class LangPage extends StatelessWidget {
  const LangPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/JK_logo.png',
              height: 300,
            ),
            
            SizedBox(height: 5),

            Text('Choose Language', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            
            // Add a small colored line between "Choose Language" and Hindi text
            Container(
              height: 2,
              width: 100,
              color: Colors.black, // Set your desired color
              margin: EdgeInsets.symmetric(vertical: 5),
            ),

            SizedBox(height: 5),

            Text('भाषा चुनें', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon above the English card
                LanguageCard(
                  language: 'English',
                  iconAsset: 'lib/assets/english.png',
                  color: Color.fromARGB(255, 186, 24, 54),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                ),

                // Add spacing between the two LanguageCard widgets
                SizedBox(width: 10),

                // Icon below the Hindi card
                LanguageCard(
                  language: 'हिन्दी',
                  iconAsset: 'lib/assets/hindi.png',
                  color: Color.fromARGB(255, 2, 154, 20),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePageHi()));
                  },
                ),
              ],
            ), 
          ],
        ),
      ),
    );
  }
}