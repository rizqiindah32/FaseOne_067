import 'package:flutter/material.dart';
import 'package:ucp_pam/screen/form_screen.dart';

void main() { 
  runApp(const MyApp()); 
} 
 
class MyApp extends StatelessWidget { 
  const MyApp({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      title: 'Flutter Demo', 
      theme: ThemeData(primarySwatch: Colors.pink), 
      home: const FormScreen(), 
      debugShowCheckedModeBanner: false, 
    ); 
  } 
}