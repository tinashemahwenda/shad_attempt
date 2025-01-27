import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Text(
            'Hello ShadCN UI',
            style: ShadTheme.of(context).textTheme.h1Large,
          ),
          Spacer()
        ],
      ),
    );
  }
}
