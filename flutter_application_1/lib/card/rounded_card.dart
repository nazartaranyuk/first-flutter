import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:windows_notification/notification_message.dart';
import 'package:windows_notification/windows_notification.dart';

class RoundedCard extends StatelessWidget {
  RoundedCard({super.key});

  final _winNotifyPlugin = WindowsNotification(applicationId: "АХАХАХАХАХ ти даун");
  final NotificationMessage message = NotificationMessage.fromPluginTemplate(
    "custom_id",
    "АХХАХАХАХАХ тебе наєбали даун ахзхахахах!",
    "Мені похуй шо ти там написав",
    image: null,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 200,
      child: Card(
        elevation: 5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Напиши тут",
                style: GoogleFonts.gabriela(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              TextField(
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    labelText: "Напиши сюди шось!!!",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelStyle: TextStyle(color: Colors.black)),
                scrollPadding: const EdgeInsets.all(0),
                onTap: () => {
                  _winNotifyPlugin.showNotificationPluginTemplate(message)
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InputFieldForm extends StatelessWidget {
  const InputFieldForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
          16.0, 16.0, 16.0, MediaQuery.of(context).viewInsets.bottom + 16.0),
      child: Column(
        children: [
          RoundedCard(),
        ],
      ),
    );
  }
}
