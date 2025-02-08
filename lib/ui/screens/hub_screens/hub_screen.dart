import 'package:dribble_parentpal/ui/screens/hub_screens/widgets/category_grid_items.dart';
import 'package:dribble_parentpal/ui/screens/hub_screens/widgets/hub_screen_appbar.dart';
import 'package:dribble_parentpal/ui/screens/hub_screens/widgets/my_groups_section.dart';
import 'package:flutter/material.dart';


class HubScreen extends StatelessWidget {
  const HubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white, // Light background color
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HubScreenAppbar(),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCategoryGrid(),
              const SizedBox(height: 24),
              buildMyGroupsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
