import 'package:flutter/material.dart';
import 'package:ui/app.dart';
import 'settings/theme_change.dart';
import 'package:provider/provider.dart';


// Flutter entry section class main[]
void main(){

  runApp(
    // Provide theme to whole app
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    )
  );
  
}