import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/card/rounded_card.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));

    return MaterialApp(
      title: "Hello world",
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            titleTextStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            title: Text(
              "Hello there!",
              style: GoogleFonts.gabriela(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            elevation: 0,
          ),
          body: const Center(
            child: SizedBox(child: InputFieldForm()),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}