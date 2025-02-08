import 'package:dribble_parentpal/config/all_colors.dart';
import 'package:dribble_parentpal/config/all_text_styles.dart';
import 'package:dribble_parentpal/config/all_texts.dart';
import 'package:dribble_parentpal/ui/screens/chat_screen/widgets/chat_screen_appbar.dart';
import 'package:dribble_parentpal/ui/screens/chat_screen/widgets/chat_title.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: ChatScreenAppbar(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: AllColors.searchBackGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 4,),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex=0;
                        });
                      },
                      style: TextButton.styleFrom(
                          splashFactory: NoSplash.splashFactory,
                          padding: EdgeInsets.zero,
                          backgroundColor: selectedIndex == 0 ? Colors.white : Colors.transparent
                      ),
                      child: Text(
                        AllTexts.directMessage,
                        style: AllTextStyles.regularTextStyle.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4,),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex=1;
                        });
                      },
                      style: TextButton.styleFrom(
                          splashFactory: NoSplash.splashFactory,
                          padding: EdgeInsets.zero,
                          backgroundColor: selectedIndex == 1 ? Colors.white : Colors.transparent
                      ),
                      child: Text(
                        AllTexts.videoCall,
                        style: AllTextStyles.regularTextStyle.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4,),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                ChatTile('Parenting Challenges', 'Giulio W. typing...', '3', true),
                ChatTile('Leslie Alexander', 'You must try', '1m', false),
                ChatTile('Forum of dads', 'Guy H. Thanks', '2', true),
                ChatTile('Robert Fox', 'Nicely done👍', '5m', false),
                ChatTile('Jerome Bell', 'Call as soon as you are free, hel...', '17m', false),
                ChatTile('Marvin McKinney', 'I found a new book on raising ch...', '20m', false),
                ChatTile('Cody Fisher', 'typing...', '1', true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
