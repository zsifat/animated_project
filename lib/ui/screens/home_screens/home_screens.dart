import 'package:flutter/material.dart';

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
        ),
      )
    );
  }
}
