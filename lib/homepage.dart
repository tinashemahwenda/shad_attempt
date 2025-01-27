import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Hello ShadCN UI h1',
              style: ShadTheme.of(context).textTheme.h1,
            ),
            Text(
              'Hello ShadCN UI p',
              style: ShadTheme.of(context).textTheme.p,
            ),
            SizedBox(height: 20),
            Text(
              'Alerts',
              style: ShadTheme.of(context).textTheme.h4,
            ),
            SizedBox(height: 10),
            ShadAlert(
              iconColor: Colors.green,
              decoration: ShadDecoration(
                color: Colors.green[100],
              ),
              iconData: LucideIcons.check,
              title: Text('Well done'),
              description:
                  Text('You have successfully made your first ShadCN/Ui Alert'),
            ),
            ShadAlert.destructive(
              iconData: LucideIcons.circleAlert,
              title: Text('Error'),
              description:
                  Text('You have entered the wrong login details. Try again'),
            )
          ],
        ),
      ),
    );
  }
}
