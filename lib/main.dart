import 'package:flutter/material.dart';
import 'package:shad_attempt/homepage.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.material(
      home: HomePage(),
    );
  }
}
