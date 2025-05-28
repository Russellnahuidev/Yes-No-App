import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/src/config/themes/app_theme.dart';
import 'package:yes_no_app/src/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/src/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).themeData(),
        title: 'Yes No App',
        home: ChatScreen(),
      ),
    );
  }
}
