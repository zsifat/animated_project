import 'package:dribble_parentpal/config/all_colors.dart';
import 'package:flutter/material.dart';

class AllTextStyles{
    static TextStyle welcomeTextStyle =TextStyle(
      fontSize: 16,
      color: AllColors.textGrey,
      fontFamily: 'Roboto-Regular',
    );

    static TextStyle userNameBold = TextStyle(
      fontSize: 24,
      color: AllColors.mainBlack,
      fontFamily:  'Roboto-Bold'
    );

    static TextStyle searchBarHintStyle = TextStyle(
      fontSize: 16,
      color: AllColors.textGrey,
      fontFamily: 'Roboto-Regular'
    );

    static TextStyle tabTextStyle = TextStyle(
      fontSize: 14,
      color: AllColors.tabTextGrey,
      fontFamily: 'Roboto-Regular'
    );

    static TextStyle hashTagTitleStyle = TextStyle(
        fontSize: 16,
        color: AllColors.mainBlack,
        fontFamily: 'Roboto-Regular'
    );
}