import 'package:flutter/material.dart';
import '../helpers/RouterManager.dart';
import '../constants/app-routers.dart';
import 'profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Normal Route (Constructor):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              padding: const EdgeInsets.all(8),
              child: const Text(
                "RouterManager.go(Profile(name_2: 'Ziad', age_2: 21))",
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                RouterManager.go(Profile(name_2: 'Ziad', age_2: 21));
              },
              child: const Text('Go (Normal Route)'),
            ),

            const SizedBox(height: 24),
            const Text(
              'Named Route (arguments):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              padding: const EdgeInsets.all(8),
              child: const Text(
                "RouterManager.goNamed(page.profile, arguments: {'name': 'Ziad', 'age': 21})",
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                RouterManager.goNamed(
                  AppRoutes.profile,
                  arguments: {'name': 'Ziad', 'age': 21},
                );
              },
              child: const Text('Go (Named Route)'),
            ),
          ],
        ),
      ),
    );
  }
}
