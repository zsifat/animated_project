import 'package:dribble_parentpal/config/all_images.dart';
import 'package:dribble_parentpal/ui/screens/home_screens/models/post_model.dart';
import 'package:dribble_parentpal/ui/screens/home_screens/models/tab_model.dart';

class AllTexts{
  static String welcome = 'Welcome Back,';
  static String userName = 'Wade Warren';
  static String profession = 'Architect';
  static String searchHint = 'What do you want to share?';

  static String feed = 'Feed';
  static String stories = 'Stories';
  static String classes = 'Classes';
  static String lifeHour = 'Life Hours';

  static String searchResults = 'Search Result';
  static String matches = 'matches';

  static String likes = 'Likes';
  static String comments = 'Comments';
  static String share = 'Share';

  static String appName = 'ParentPal';
  static String motto = 'Connect, Share, Care!';

  static String top = 'Top';
  static String accounts = 'Accounts';
  static String hashtags = 'Hashtags';
  static String posts = 'Posts';

  static String hash = '#';
  static String hashTag = 'Game for boys';
  static String viewsCount = '1.5k';
  static String views = 'Views';

  static String time = '14 min';
  static String ago = 'ago';

  static int count = 24;

  static String postDes = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  static List<TabModel> tabModels = [
    TabModel(title: AllTexts.feed, id: 0),
    TabModel(title: AllTexts.stories, id: 1),
    TabModel(title: AllTexts.classes, id: 2),
    TabModel(title: AllTexts.lifeHour, id: 3),
  ];

  static List<TabModel> categories = [
    TabModel(title: AllTexts.top, id: 0),
    TabModel(title: AllTexts.accounts, id: 1),
    TabModel(title: AllTexts.hashtags, id: 2),
    TabModel(title: AllTexts.posts, id: 3),

  ];

  static List<PostModel> postModel = [
    PostModel(
        userImage: AllImages.userImage,
        userName: userName,
        userBio: AllTexts.profession,
        postedTime: AllTexts.time,
        postText:AllTexts.postDes,
        postImage: AllImages.postImage,
        likes: AllTexts.count,
        comments: AllTexts.count),
  ];
}