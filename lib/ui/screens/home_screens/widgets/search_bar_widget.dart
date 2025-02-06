import 'package:dribble_parentpal/config/all_colors.dart';
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
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 50,
        width: width,
        child: TextField(
          style: AllTextStyles.searchBarHintStyle,
          onChanged: (value){

          },
          decoration:InputDecoration(
            filled: true,
            fillColor: AllColors.searchBackGrey,
            hintText: AllTexts.searchHint,
            hintStyle: AllTextStyles.searchBarHintStyle,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            // enabled border side
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: AllColors.transparent,
                width: 0
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: AllColors.transparent,
                width: 0
              )
            )
          )
        )
      ),
    );
  }
}
