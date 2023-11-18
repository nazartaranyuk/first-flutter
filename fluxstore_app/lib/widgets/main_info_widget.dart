import 'package:flutter/material.dart';
import 'package:fluxstore_app/utils/colors.dart';
import 'package:fluxstore_app/widgets/main_info_item_widget.dart';

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        margin: const EdgeInsets.all(0),
        elevation: 0,
        color: mainInfoColor,
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MainInfoItemWidget(
                iconAsset: "assets/heart_bpm_icon.svg",
                headerText: "Heart rate",
                itemText: "86",
                itemValue: "BPM",
              ),
              MainInfoItemWidget(
                iconAsset: "assets/fire_icon.svg",
                headerText: "To-do",
                itemText: "32,5",
                itemValue: "%",
              ),
              MainInfoItemWidget(
                iconAsset: "assets/todo_icon.svg",
                headerText: "Calories",
                itemText: "1000",
                itemValue: "Cal",
              ),
            ],
          ),
        ),
      ),
    );
  }

}