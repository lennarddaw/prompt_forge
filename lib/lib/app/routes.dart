import 'package:flutter/material.dart';
import '../features/homepage/presentation/home_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomeScreen(),
};
