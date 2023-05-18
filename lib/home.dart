import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolior/home.dart';
import 'package:portfolior/about.dart';
import 'package:portfolior/professional_experience.dart';
import 'package:portfolior/contact.dart';
import 'package:portfolior/education.dart';

final Uri _url = Uri.parse('https://www.linkedin.com/in/rachana-sharma-1a7630269/');

class Home extends StatelessWidget{

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ListView(
        children:  [
           const Padding(
             padding: EdgeInsets.all(16),
             child: Text("I am a fresher Flutter developer with a passion for mobile application development. "
                "I have completed several online courses on Flutter and Dart programming language."
                " I am proficient in using Flutter SDK along with Python backend in developing small-scale applications. ",
                textAlign: TextAlign.center,),
           ),
          const SizedBox(height: 5,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SpeedDial(
                  child: FaIcon(FontAwesomeIcons.linkedin),
                ),
                SizedBox(width: 15,),
                SpeedDial(
                  child: FaIcon(FontAwesomeIcons.instagram),
                ),
                SizedBox(width: 15,),
                SpeedDial(
                  child: FaIcon(FontAwesomeIcons.facebook),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Text("SKILLS", textAlign: TextAlign.justify, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onBackground,),),
          const SizedBox(height: 5,),
          const About(),
          const SizedBox(height: 15,),
          Text("PROFESSIONAL EXPERIENCE", textAlign: TextAlign.justify, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onBackground,),),
          const SizedBox(height: 5,),
           const Resume(),
          const SizedBox(height: 15,),
          Text("EDUCATION", textAlign: TextAlign.justify, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onBackground,),),
          const SizedBox(height: 5,),
          const Education(),
          const SizedBox(height: 15,),
          Text("CONTACT", textAlign: TextAlign.justify, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onBackground,),),
          const SizedBox(height: 15,),
          const Contact()
        ],
      ),
    );
  }
}




