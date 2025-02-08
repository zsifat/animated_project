import 'package:dribble_parentpal/config/all_texts.dart';
import 'package:flutter/material.dart';

import '../../../../config/all_text_styles.dart';

class HubScreenAppbar extends StatelessWidget {
  const HubScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false, // Removes back button
      title: Text(
        AllTexts.hub,
        style: AllTextStyles.appBarTextStyle,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }
}
