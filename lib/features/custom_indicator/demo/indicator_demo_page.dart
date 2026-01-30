import 'package:flutter/material.dart';
import '../widgets/primary_progress_indicator.dart';

class IndicatorDemoPage extends StatefulWidget {
  const IndicatorDemoPage({super.key});

  @override
  State<IndicatorDemoPage> createState() => _IndicatorDemoPageState();
}

class _IndicatorDemoPageState extends State<IndicatorDemoPage> {
  double progress = 0.2;

  void increaseProgress() {
    setState(() {
      progress += 0.1;
      if (progress > 1.0) progress = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Primary Progress Indicator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryProgressIndicator(
              value: progress,
              height: 14,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: increaseProgress,
              child: const Text("Increase Progress"),
            ),
          ],
        ),
      ),
    );
  }
}
