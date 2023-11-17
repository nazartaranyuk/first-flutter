import 'package:flutter/material.dart';
import 'package:fluxstore_app/widgets/main_info_widget.dart';
import 'package:fluxstore_app/widgets/user_main_page_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: [
              UserMainPageWidget(),
              Padding(padding: EdgeInsets.only(top: 27)),
              MainInfoWidget()
            ],
          ),
        ),
      ),
    );
  }
}
