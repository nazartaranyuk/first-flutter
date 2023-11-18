import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainInfoItemWidget extends StatelessWidget {
  const MainInfoItemWidget(
      {required this.iconAsset,
      required this.headerText,
      required this.itemText,
      required this.itemValue,
      super.key});

  final String iconAsset;
  final String headerText;
  final String itemText;
  final String itemValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconAsset,
              width: 16,
              height: 16,
            ),
            const Padding(padding: EdgeInsets.only(left: 2)),
            Text(headerText,
                style: GoogleFonts.inter(
                    fontSize: 12, fontWeight: FontWeight.w400))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              itemText,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              itemValue,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
      ],
    );
  }
}
