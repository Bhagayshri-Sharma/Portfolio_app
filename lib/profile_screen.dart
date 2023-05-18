import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:portfolior/home.dart';
import 'package:portfolior/about.dart';
import 'package:portfolior/professional_experience.dart';
import 'package:portfolior/contact.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {

  Widget screenStart = Home();


  void setScreen(String screenTitle){

      setState(()
      {
        if (screenTitle == 'about')
        {
        screenStart = const About();
        }
        if (screenTitle == 'home')
        {
        screenStart = const Home();
        } if (screenTitle == 'resume')
        {
        screenStart = Resume();
        } if (screenTitle == 'contact')
        {
        screenStart = const Contact();
        }
      });


  }

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
        body: screenStart,
      floatingActionButton: FloatingView(setScreen: setScreen),
    );
  }
}



class FloatingView extends StatelessWidget{

  FloatingView({super.key, required this.setScreen});
  void Function(String) setScreen;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SpeedDial(
        animatedIcon : AnimatedIcons.menu_close,
        children : [
          SpeedDialChild(
            child: const Icon(Icons.computer),
            label: "skill",
            onTap: () {setScreen('skill');
             },
          ),
          SpeedDialChild(
            child: const Icon(Icons.person),
            label: "experience",
            onTap: () {setScreen('experience');},
          ),
          SpeedDialChild(
            child: const Icon(Icons.school_outlined),
            label: "education",
            onTap: () {setScreen('education');},
          ),
          SpeedDialChild(
            child: const Icon(Icons.contact_page_outlined),
            label: "contact",
            onTap: () {setScreen('contact');},
          ),
        ]
    );
  }
}
