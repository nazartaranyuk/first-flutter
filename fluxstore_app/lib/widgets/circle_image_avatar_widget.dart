import 'package:flutter/material.dart';

class UserAvatarWidget extends StatelessWidget {
  const UserAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 56,
      height: 56,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/user_avatar.jpg'),
      ),
    );
  }
}
