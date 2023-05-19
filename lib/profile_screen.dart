import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:portfolior/home.dart';
import 'package:portfolior/about.dart';
import 'package:portfolior/professional_experience.dart';
import 'package:portfolior/contact.dart';
import 'package:portfolior/section.dart';
import 'package:portfolior/education.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List<Section> section = [
    Section(key : GlobalKey(), title : 'SKILLS', body: const About(), icon: const Icon(Icons.computer)),
    Section(key : GlobalKey(), title: "PROFESSIONAL EXPERIENCE", body: const Resume(), icon: const Icon(Icons.person)),
    Section(key : GlobalKey(), title: "EDUCATION", body: const Education(), icon: const Icon(Icons.school)),
    Section(key : GlobalKey(), title: "CONTACT", body: const Contact(), icon : const Icon(Icons.contact_page_outlined)),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
          title: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/new_in.jpg'),
                radius: 80,
              ),
              Text("Rachana Sharma", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),),
              const SizedBox(height: 5,),
              Text("Flutter developer | Python Django Developer",
                overflow: TextOverflow.visible,
                softWrap: true,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ],
        ),
          ),
        ),
        body: Home(sectionList: section,),
      floatingActionButton: FloatingView(sectionList: section,),
    );
  }
}


class FloatingView extends StatelessWidget{

  FloatingView({super.key,  required this.sectionList});
  final List<Section> sectionList ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SpeedDial(
        animatedIcon : AnimatedIcons.menu_close,
        children : sectionList.map((section) => SpeedDialChild(
          child: section.icon,
          label: section.title,
          onTap: () {Scrollable.ensureVisible(
              section.key.currentContext!,
            );       },
        ),).toList()

    );
  }
}
