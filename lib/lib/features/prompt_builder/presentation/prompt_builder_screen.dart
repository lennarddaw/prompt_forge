import 'package:flutter/material.dart';

class PromptBuilderScreen extends StatelessWidget {
  const PromptBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PromptForge Builder"),
      ),
      body: const Center(
        child: Text("Welcome to PromptForge Mobile!"),
      ),
    );
  }
}
