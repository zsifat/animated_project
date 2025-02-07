import 'package:dribble_parentpal/ui/screens/home_screens/widgets/home_page_appbar.dart';
import 'package:dribble_parentpal/ui/screens/home_screens/widgets/post_card.dart';
import 'package:flutter/material.dart';

import '../../../config/all_colors.dart';
import '../../../config/all_texts.dart';
import '../../widgets/custom_tab_button.dart';
import '../../widgets/search_bar_widget.dart';
import 'models/post_model.dart';
import 'models/tab_model.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final TextEditingController _searchController = SearchController();

  List<TabModel> tabModels = AllTexts.tabModels;

  List<PostModel> postModels = AllTexts.postModel;

  int clickedId = 0;

  tabClickFunc(int id){
    setState((){
      clickedId = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AllColors.white,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: HomePageAppbar(),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
            width: size.width,
            child: Column(
              children: [
                SearchBarWidget(searchController: _searchController),
                Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                    child: SizedBox(
                        height: 28,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: tabModels.length,
                            itemBuilder: (context, index){
                              return CustomTabButton(model: tabModels[index], clickedId: clickedId, clickFunc: tabClickFunc);
                            })
                    )
                ),
                const SizedBox(height: 20),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index){
                      return PostCard(model: postModels[0]);
                    }
                )
              ],
            )
        ),
      ),
    );
  }
}
