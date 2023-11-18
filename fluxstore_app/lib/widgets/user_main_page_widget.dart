import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluxstore_app/widgets/circle_image_avatar_widget.dart';

class UserMainPageWidget extends StatelessWidget {
  const UserMainPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const UserAvatarWidget(),
          const Padding(padding: EdgeInsets.only(right: 15)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Nazar",
                textAlign: TextAlign.start,
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w400),
              ),
              Text(
                "Ready to workout?",
                textAlign: TextAlign.start,
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset("assets/notification_icon.svg"),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}
