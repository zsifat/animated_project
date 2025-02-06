
import 'package:dribble_parentpal/ui/screens/home_screens/widgets/home_page_appbar.dart';
import 'package:dribble_parentpal/ui/screens/home_screens/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  HomeScreens({super.key});

  final TextEditingController _searchController = SearchController();


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: HomePageAppbar(),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
                SearchBarWidget(searchController: _searchController)
            ],
          )
        ),
      ),
    );
  }
}
