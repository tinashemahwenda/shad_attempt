import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Hello Playground',
                style: ShadTheme.of(context).textTheme.h1,
              ),
              Text(
                'Hello Paragraph',
                style: ShadTheme.of(context).textTheme.p,
              ),
              SizedBox(height: 20),
              Text(
                'Alerts',
                style: ShadTheme.of(context).textTheme.h4,
              ),
              SizedBox(height: 10),
              ShadAlert.destructive(
                iconData: LucideIcons.circleAlert,
                title: Text('Error'),
                description:
                    Text('You have entered the wrong login details. Try again'),
              ),
              SizedBox(height: 20),
              Text(
                'Avatar',
                style: ShadTheme.of(context).textTheme.h4,
              ),
              ShadAvatar(
                'assets/emoface.png',
                placeholder: Text(
                  'TM',
                  style: TextStyle(color: Colors.amber),
                ),
                backgroundColor: Colors.grey[400],
                size: Size.fromRadius(30),
              ),
              SizedBox(height: 20),
              Text(
                'Badges',
                style: ShadTheme.of(context).textTheme.h4,
              ),
              SizedBox(height: 10),
              Row(
                spacing: 10,
                children: [
                  ShadBadge(child: Text('Default')),
                  ShadBadge.secondary(child: Text('Calm')),
                  ShadBadge.outline(child: Text('Outline')),
                  ShadBadge.destructive(child: Text('Danger')),
                  ShadBadge(
                    child: Text('Custom'),
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Buttons',
                style: ShadTheme.of(context).textTheme.h4,
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                child: Row(
                  children: [
                    ShadButton(
                      child: Text('Default'),
                    ),
                    ShadButton.secondary(
                      child: Text('Secondary'),
                    ),
                    ShadButton.destructive(
                      child: Text('Warning'),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  ShadButton(
                    icon: Icon(LucideIcons.mail),
                    child: Text('Email Us'),
                    backgroundColor: Colors.blue,
                  ),
                  ShadButton(
                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.cyan,
                    ]),
                    child: Text('Gradient '),
                  ),
                  ShadButton.outline(
                    child: Text('Outline'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Checkbox',
                style: ShadTheme.of(context).textTheme.h4,
              ),
              SizedBox(height: 10),
              ShadCheckbox(
                value: value,
                onChanged: (v) => setState(() => value = v),
                label: Text('Are you sure you want to continue'),
                sublabel:
                    Text('Accepting means you have agreed witht he terms'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
