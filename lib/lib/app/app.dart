import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/constants/strings.dart';
import '../features/prompt_builder/application/prompt_provider.dart';
import 'routes.dart';

class PromptForgeApp extends StatelessWidget {
  const PromptForgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PromptProvider()),
      ],
      child: MaterialApp(
        title: appTitle,
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.cyan,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: appRoutes,
      ),
    );
  }
}
