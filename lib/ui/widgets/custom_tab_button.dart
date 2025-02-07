import 'package:dribble_parentpal/config/all_colors.dart';
import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/ui/screens/home_screens/models/tab_model.dart';
import 'package:flutter/material.dart';

class CustomTabButton extends StatelessWidget {
  final TabModel model;
  final int clickedId;
  final Function clickFunc;

  const CustomTabButton(
      {required this.model,
      required this.clickedId,
      required this.clickFunc,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        clickFunc(model.id);
      },
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        // height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: clickedId == model.id ? AllColors.transparent : AllColors.searchBackGrey,
            width: 1
          ),
          color: clickedId == model.id ? AllColors.mainBlack : AllColors.white
        ),
        child: Text(
          model.title,
          style: AllTextStyles.tabTextStyle.copyWith(
              color: clickedId == model.id
                  ? AllColors.white
                  : AllColors.tabTextGrey
          ),
        ),
      ),
    );
  }
}
