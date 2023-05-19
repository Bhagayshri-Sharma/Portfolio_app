import 'package:flutter/material.dart';

class Section {
  Section({required this.key, required this.title, required this.body,
    required this.icon});

  final GlobalKey key ;
  final String title ;
  final Widget body ;
  final Icon icon ;
}