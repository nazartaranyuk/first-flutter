import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter_application_1/card/rounded_card.dart';

void main() {
  runApp(const App());
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(400, 500);
    win.minSize = initialSize;
    win.alignment = Alignment.center;
    win.title = "Угадай шо тут?!";
    win.show();
  });
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));

    return MaterialApp(
      title: "Секрет",
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            titleTextStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            title: Text(
              "Напиши шось в поле!",
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
