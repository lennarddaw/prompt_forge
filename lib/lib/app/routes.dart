import 'package:flutter/material.dart';
import '../../features/prompt_builder/presentation/prompt_builder_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const PromptBuilderScreen(),
};
