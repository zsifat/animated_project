import 'package:dribble_parentpal/ui/screens/hub_screens/widgets/grid_items.dart';
import 'package:dribble_parentpal/ui/screens/hub_screens/widgets/my_groups.dart';
import 'package:flutter/material.dart';
import 'package:dribble_parentpal/config/all_text_styles.dart';


class HubScreen extends StatelessWidget {
  const HubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Light background color
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false, // Removes back button
        title: Text(
          "Hub",
          style: AllTextStyles.regularTextStyle.copyWith(fontSize: 24,fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCategoryGrid(),
              const SizedBox(height: 40),
              buildMyGroupsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
