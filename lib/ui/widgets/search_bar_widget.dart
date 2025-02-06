import 'package:dribble_parentpal/config/all_colors.dart';
import 'package:dribble_parentpal/config/all_images.dart';
import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/config/all_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController searchController;
  final bool? prefixShow;
  final bool? suffixShow;
  const SearchBarWidget({
    required this.searchController,
    this.prefixShow,
    this.suffixShow,
    super.key,});

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

            // suffix section
            suffixIcon: prefixShow != null ? InkWell(
              onTap: (){

              },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: SvgPicture.asset(AllImages.closeIcon, height: 20, width: 20),
                )

            ) : null,
            // prefix section
            prefixIcon: suffixShow != null ? InkWell(
              onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:15.0),
                  child: SvgPicture.asset(AllImages.searchIcon, height: 20, width: 20),
                )
            ): null,
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
