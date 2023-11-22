import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/provider/share_data_provider.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<ShareDataProvider>().sharedData,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<ShareDataProvider>()
                      .SharingData(newData: controller.text);
                },
                child: const Text("Pass Data"))
          ],
        ),
      ),
    );
  }
}
