import 'package:flutter/material.dart';

import 'all_colors.dart';

import 'package:dribble_parentpal/config/all_colors.dart';
import 'package:flutter/material.dart';

class AllTextStyles{
  static TextStyle splashTextStyle =TextStyle(
    fontSize: 66,
    fontWeight: FontWeight.w900,
    fontFamily: 'Roboto-Bold',
    color: Colors.white,
  );
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

  static TextStyle regularTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontFamily: 'Roboto-Regular',
  );

  static TextStyle lightRegularTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontFamily: 'Roboto-SemiBold',
  );
  static TextStyle sectionHeadingTextStyle = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontFamily: 'Roboto-Bold',
    fontWeight: FontWeight.bold
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