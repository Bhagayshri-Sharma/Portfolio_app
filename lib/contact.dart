import 'package:flutter/material.dart';


class Contact extends StatelessWidget{

  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const CircleAvatar(
              child: Icon(Icons.location_on),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("LOCATION", textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.primary),),
                  const Text("B/304, Jivdani apartment Ramu complex, Virar East Maharashtra, 401305."),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              child: Icon(Icons.mail_outline),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("MAIL", textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.primary),),
                  const Text("sharmarachana0706@gmail.com"),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              child: Icon(Icons.phone_android),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CALL", textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.primary),),
                  const Text("+91 90336 63055"),
                ],
              ),
            ),
          ],
        ),
        
      ],
    );
  }
}