import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/config/all_texts.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController searchController;
  const SearchBarWidget({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 56,
        width: width,
        child: TextField(
          decoration:InputDecoration(
            hintText: AllTexts.searchHint,
            hintStyle: AllTextStyles.searchBarHintStyle
          )
        )
      ),
    );
  }
}
