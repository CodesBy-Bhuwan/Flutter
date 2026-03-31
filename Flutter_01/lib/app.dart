import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'settings/theme_change.dart';
import 'screens/home_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/create_post_screen.dart';
import 'screens/login_screen.dart';
import 'screens/message_screen.dart';
import 'screens/post_detail_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/signup_screen.dart';
// import 'screens/';


// screens imports...

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Listen to theme changes
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // ✅ LIGHT THEME
      theme: ThemeData.light(),

      // ✅ DARK THEME
      darkTheme: ThemeData.dark(),

      // ✅ CURRENT THEME
      themeMode: themeProvider.themeMode,

      initialRoute: '/',

      routes: {
        '/': (context) => HomeScreen(),
        '/contact': (context) => ContactScreen(),
        '/profile': (context) => ProfileScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/postDetail': (context) => PostDetailScreen(),
        '/createPost': (context) => CreatePostScreen(),
        '/messages': (context) => MessageScreen(),
      },
    );
  }
}