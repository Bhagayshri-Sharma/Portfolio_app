import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolior/section.dart';


class Home extends StatelessWidget{

  const Home({super.key, required this.sectionList});
  final List<Section> sectionList ;



  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(12),
      child: ListView.builder(itemCount: sectionList.length , itemBuilder: (ctx, index) {
        final section = sectionList[index];

        return ContentList(
        key: section.key,
        section: section,
      );
      })
    );
  }
}

class ContentList extends StatelessWidget{

  ContentList({super.key, required this.section});

  final Section section ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const SizedBox(height: 15,),
        Text(section.title, textAlign: TextAlign.justify, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onBackground,),),
        const SizedBox(height: 5,),
        section.body,
      ],
    );
  }
}




// ListView(
// children:  [
// const Introduction(),
// const SizedBox(height: 15,),
// Text("SKILLS", textAlign: TextAlign.justify, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onBackground,),),
// const SizedBox(height: 5,),
// const About(),
// const SizedBox(height: 15,),
// Text("PROFESSIONAL EXPERIENCE", textAlign: TextAlign.justify, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onBackground,),),
// const SizedBox(height: 5,),
// const Resume(),
// const SizedBox(height: 15,),
// Text("EDUCATION", textAlign: TextAlign.justify, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onBackground,),),
// const SizedBox(height: 5,),
// const Education(),
// const SizedBox(height: 15,),
// Text("CONTACT", textAlign: TextAlign.justify, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onBackground,),),
// const SizedBox(height: 15,),
// const Contact()
// ],
// ),





class Introduction extends StatelessWidget{

  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      children: [
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
      ],
    );
  }

}

