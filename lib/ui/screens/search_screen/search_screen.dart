import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/config/all_texts.dart';
import 'package:dribble_parentpal/ui/screens/home_screens/models/tab_model.dart';
import 'package:dribble_parentpal/ui/screens/search_screen/models/hashtag_model.dart';
import 'package:dribble_parentpal/ui/screens/search_screen/widgets/hashtag_results.dart';
import 'package:dribble_parentpal/ui/widgets/custom_tab_button.dart';
import 'package:dribble_parentpal/ui/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _textController = TextEditingController();

  final List<TabModel> categories = AllTexts.categories;

  final List<HashTagModel> hashTags = List.generate(10, (index){return HashTagModel(title: AllTexts.hashTag, totalViews: AllTexts.viewsCount);});

  int clickedId = 0;

  tabClickFunc(int ind){
    setState((){
      clickedId = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        titleSpacing: 0,
        title: SearchBarWidget(searchController: _textController, prefixShow: true, suffixShow: true,),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: SizedBox(
                width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AllTexts.searchResults,
                    style: AllTextStyles.userNameBold,
                  ),
                  Text(
                    '144 ${AllTexts.matches}',
                    style:AllTextStyles.tabTextStyle
                  ),
                  const SizedBox(height: 20),
                  // category section
                  Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: SizedBox(
                          height: 28,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: categories.length,
                              itemBuilder: (context, index){
                                return CustomTabButton(model: categories[index], clickedId: clickedId, clickFunc: tabClickFunc);
                              })
                      )
                  ),
                  const SizedBox(height: 10),
                  // list results
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: hashTags.length,
                    itemBuilder: (context, index){
                      return HashtagResults(model: hashTags[index]);
                    },
                  )
                ],
              )
            )
          )
      )
    );
  }
}
