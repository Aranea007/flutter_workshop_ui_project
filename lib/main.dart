import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e01_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp( 
    FlutterWorkShopProject(),
  );
}

class FlutterWorkShopProject extends StatefulWidget {
  const FlutterWorkShopProject({super.key});

  @override
  State<FlutterWorkShopProject> createState() => _FlutterWorkShopProjectState();
}

class _FlutterWorkShopProjectState extends State<FlutterWorkShopProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ซ่อนdebug
      debugShowCheckedModeBanner: false,
      //หน้าแรก
      home: E01PageUi(),
      //themeของแอพ
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: GoogleFonts.poppins().fontFamily,
          fontFamilyFallback: GoogleFonts.poppins().fontFamilyFallback,
        ),
      ),
    );
  }
}