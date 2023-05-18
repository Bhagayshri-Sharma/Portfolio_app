import 'package:flutter/material.dart';


class About extends StatelessWidget{

  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> skillSet = ['Flutter',  'Kibana', 'Elastic Search',
                                   'Selenium', 'Pytest', 'Jenkins', 'Docker',
                                    'Django','Postman','Jira', 'Ubuntu',  'Git',
      'automation testing with python',];

    return Wrap(
      spacing: 8.0,
        runSpacing: 4.0,
        children: [
          for (final data in skillSet)
              ChipShow(skillValue : data),
        ],
    );

  }
}

class ChipShow extends StatelessWidget {

 ChipShow({super.key, required this.skillValue}) ;
 String skillValue ;

 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Chip(
      label: Text(skillValue),
      backgroundColor: const Color.fromARGB(255, 134, 89, 206),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        side: const BorderSide(color: Colors.white),
    labelStyle: const TextStyle(color: Colors.white),);
  }

}