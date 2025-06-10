// lib/features/homepage/presentation/home_screen.dart

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  List mySmartDevices = [
    ["Build Prompt", "lib/icons/view.png", true],
    ["Saved Prompts", "lib/icons/monitor-up.png", false],
    ["Explore GPT", "lib/icons/globe-lock.png", false],
    ["Settings", "lib/icons/locate-fixed.png", false],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, size: 45, color: Colors.cyan),
                  Icon(Icons.person, size: 45, color: Colors.grey),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade800),
                  ),
                  Text(
                    'PromptForge',
                    style: GoogleFonts.bebasNeue(fontSize: 64),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Divider(
                thickness: 1,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                "Prompt Overview",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                itemCount: mySmartDevices.length,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // TODO: Navigation based on index
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: mySmartDevices[index][2] ? Colors.cyan.shade100 : Colors.grey.shade200,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(mySmartDevices[index][1], height: 64),
                          const SizedBox(height: 10),
                          Text(
                            mySmartDevices[index][0],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Switch(
                            value: mySmartDevices[index][2],
                            onChanged: (value) => powerSwitchChanged(value, index),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
