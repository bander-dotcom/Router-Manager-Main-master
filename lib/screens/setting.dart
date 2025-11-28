import 'package:flutter/material.dart';
import '../helpers/RouterManager.dart';
import '../constants/app-routers.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings Screen')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Setting',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 93, 63, 63),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "RouterManager.goNamed(pages.home)",
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => RouterManager.goNamed(AppRoutes.home),
              child: const Text('Home (Named Route)'),
            ),

            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(253, 238, 238, 238),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "RouterManager.backTimes(2)",
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => RouterManager.backTimes(2),
              child: const Text('Go back two screens'),
            ),

            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 158, 138, 225),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "RouterManager.backTimes(1)",
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => RouterManager.backTimes(1),
              child: const Text('Go back one screen'),
            ),
          ],
        ),
      ),
    );
  }
}
