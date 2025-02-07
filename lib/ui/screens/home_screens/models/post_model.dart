class PostModel {
  final String userImage;
  final String userName;
  final String userBio;
  final String postedTime;
  final String postText;
  final String postImage;
  final int likes;
  final int comments;

  PostModel({
    required this.userImage,
    required this.userName,
    required this.userBio,
    required this.postedTime,
    required this.postText,
    required this.postImage,
    required this.likes,
    required this.comments,
  });
}
