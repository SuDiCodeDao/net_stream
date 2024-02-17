import 'package:flutter/material.dart';
import 'package:net_stream/config/routes/app_route.dart';
import 'package:net_stream/config/theme/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://enxajjqbhuxwasbijbry.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVueGFqanFiaHV4d2FzYmlqYnJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDgwODMyNDIsImV4cCI6MjAyMzY1OTI0Mn0.xbkwuVis8GSH2nDgWgsO1hkveV7mUZqllh3y5W3TsJc');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: DAppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
