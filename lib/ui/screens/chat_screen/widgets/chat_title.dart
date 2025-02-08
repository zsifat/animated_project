import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../config/all_colors.dart';
import '../../../../config/all_images.dart';
import '../../../../config/all_text_styles.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final bool hasNotification;

  const ChatTile(this.name, this.message, this.time, this.hasNotification, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 80,
      leading: CircleAvatar(
        radius: 32,
        backgroundColor: AllColors.searchBackGrey,
        backgroundImage: AssetImage(AllImages.userProfileImage),
      ),
      title: Row(
        children: [
          Text(
            name,
            style: AllTextStyles.userNameChat,
          ),
          const SizedBox(
            width: 10,
          ),
          SvgPicture.asset(
            AllImages.muteIcon,
            colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            width: 16,
            height: 16,
          )
        ],
      ),
      subtitle: Text(
        message,
        style: AllTextStyles.searchBarHintStyle,
      ),
      trailing: hasNotification
          ? CircleAvatar(
              radius: 12,
              backgroundColor: Colors.black,
              child: Text(
                time,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          : Text(time),
    );
  }
}
