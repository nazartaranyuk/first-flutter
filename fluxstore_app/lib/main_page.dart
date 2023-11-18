import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluxstore_app/widgets/top_bar_widget.dart';
import 'package:fluxstore_app/widgets/main_info_widget.dart';
import 'package:fluxstore_app/widgets/user_main_page_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light,
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const UserMainPageWidget(),
              const Padding(padding: EdgeInsets.only(top: 27)),
              const MainInfoWidget(),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Workout programs",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24,),
              const TopBarWidget()
            ],
          ),
        ),
      ),
    );
  }
}
